import pandas as pd
import subprocess
import argparse
import os
import pdftotext
import re
from decimal import Decimal


def create_file_dct(run_file,topic_format):
    eval_path = os.path.join(args.anserini_root, 'eval/trec_eval/trec_eval')

    if round_number == '1' or round_number == '2':
        output = subprocess.check_output(
        f'{eval_path} -c -m ndcg_cut.10 -m P.5 -m bpref -m map -m rbp.p=0.5 {qrels} {runs}/{run_file}', shell=True)
        output_lst = output.split()
        clean_output = [topic_format,float(output_lst[11]), float(output_lst[8]),
                    float(output_lst[14]), float(output_lst[5]),
                    float(output_lst[2])]

    elif round_number == '3':
        output = subprocess.check_output(
        f'{eval_path} -c -m ndcg_cut.10 -m P.5 -m bpref -m map -m rbp.p=0.5 {qrels} {runs}/{run_file}', shell=True)
        output_lst = output.split()
        # j measurement
        measure_judged_path = os.path.join(args.anserini_root, 'tools/eval/measure_judged.py ')
        j_measure = subprocess.check_output(
        f'python {measure_judged_path}--qrels {qrels} --cutoffs 10 5 1000 --run {runs}/{run_file}', shell=True)
        j_measure_lst = j_measure.split()

        clean_output = [topic_format,float(output_lst[11]), float(j_measure_lst[2]),
                    float(output_lst[8]),float(j_measure_lst[5]),
                    float(output_lst[14]), float(output_lst[5]),
                    float(output_lst[2]), float(j_measure_lst[8])]
    
    elif round_number == '4':
        output = subprocess.check_output(
        f'{eval_path} -c -m ndcg_cut.20 -m P.20 -m bpref -m map -m rbp.p=0.5 {qrels} {runs}/{run_file}', shell=True)
        output_lst = output.split()

        clean_output = [topic_format,float(output_lst[11]), float(output_lst[8]),
                    float(output_lst[14]), float(output_lst[5]),
                    float(output_lst[2])]

    return clean_output


def compare_score(actual_score, row, score_type_lst):
    run_name = row[0]
    print(actual_score)
    print(row)
    for i in range(len(actual_score)):
        expected_score = row[i + 5]
        if actual_score[i] != expected_score:
            score_type = score_type_lst[i]
            print(f'In the run {run_name}, the score for {score_type} does not match')
            print(f'The expected score is {expected_score}, but the actual score is {actual_score[i]}\n')
    if actual_score == row[5:].tolist():
        print(f'All scores in the run {run_name} match')
        return True
    return False


def create_runs_info(file):
    rootdir = reports + file + '.pdf'
    with open(rootdir, "rb") as f:
        context = pdftotext.PDF(f)
    context = list(context)
    team_name = ('_').join(re.findall('submitted from.+?\n', context[0])[0].split()[2:])
    runstype = re.findall('Topic type.+?Total number retrieved', context[0])[0].split()[2]
    jugement = re.findall('Contributed to judgment sets?.+?Total relevant', context[0])[0].split()[4]
    return [file, team_name,f'reports/{file}.pdf', runstype, jugement]


def compare_score_dct():
    df = pd.read_csv(leaderboard_runs).round(4).fillna('')
    score_type_lst = df.columns[5:]
    topic_format_dic ={}
    for index, row in df.iterrows():
        topic_format_dic[row[0]] =row[5]
        actual_score = create_file_dct(row[0],row[5])
        compare_res = compare_score(actual_score, row, score_type_lst)
        # if not compare_res:
        #     return topic_format_dic,False
    return topic_format_dic,True


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Compare all runs and generate a new leaderbroad.')
    parser.add_argument('--anserini_root', default='', help='Set the path to Anserini directory', required=True)
    parser.add_argument('--run_root', default='', help='Set the path to TREC_COVID directory', required=True)
    parser.add_argument('--round_number', default='', help='Set the round number, it supports round 1, 2 , 3 and 4 now', required=True)
    
    args = parser.parse_args()
    round_number = args.round_number
    qrels = os.path.join(args.anserini_root, f'src/main/resources/topics-and-qrels/qrels.covid-round{round_number}.txt')
    runs = os.path.join(args.run_root, 'runs')
    reports = os.path.join(args.run_root, 'reports/')
    leaderboard_runs = os.path.join(args.run_root, 'leaderboard.csv')

    # topicformat_dic,compare_res = compare_score_dct()
    topicformat_dic,compare_res ={},True
    if not compare_res:
        print('Failed to generate new leaderboard.csv')
    else:
        df_lst = []
        for subdir, dirs, files in os.walk(runs):
            for file in files:
                file_lst = create_runs_info(file)
                if file in topicformat_dic.keys():
                    file_lst.extend(create_file_dct(file,topicformat_dic[file]))
                else:
                    file_lst.extend(create_file_dct(file,''))
                df_lst.append(file_lst)
        df_runs = pd.DataFrame(df_lst)

        if round_number == '1':
            df_runs.columns = ['run', 'team', 'report','runtype', 'contributed judgments', 'topicformat','ndcg@10', 'p@5',
            'RBP(p=.5)','bpref', 'MAP']
            df_runs = df_runs.sort_values(by=['ndcg@10'], ascending=False)
        elif round_number == '2':
            df_runs.columns = ['tag', 'team','report', 'type', 'contributed judgments','topicformat', 'NDCG@10', 'P@5', 'RBP(p=.5)',
                        'bpref', 'MAP']
            df_runs = df_runs.sort_values(by=['ndcg@10'], ascending=False)
        elif round_number == '3':
            df_runs.columns = ['run', 'team', 'report','runtype', 'contributed judgments', 'topicformat', 'ndcg@10', 'J@10', 'P@5', 'J@5', 'rbp_p5',
                       'bpref', 'map', 'J@1000']
            df_runs = df_runs.sort_values(by=['ndcg@10'], ascending=False)
        elif round_number == '4':
            df_runs.columns = ['tag', 'team', 'report','runtype', 'contributed judgments', 'topicformat', 'ndcg@20', 'P@20', 'rbp_p5',
                       'bpref', 'map']
            df_runs = df_runs.sort_values(by=['ndcg@20'], ascending=False)


        df_runs.to_csv(leaderboard_runs, float_format='%.4f',index=False)
        print('Successfully generate all runs score in ' + leaderboard_runs)
