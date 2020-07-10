import pandas as pd
import subprocess
import argparse
import os
import pdftotext
import re


def create_file_dct(run_file):
    eval_path = os.path.join(args.anserini_root, 'eval/trec_eval/trec_eval')
    measure_judged_path = os.path.join(args.anserini_root, 'tools/eval/measure_judged.py ')
    output = subprocess.check_output(
        f'{eval_path} -c -m ndcg_cut.10 -m P.5 -m bpref -m map -m rbp.p=0.5 {qrels} {runs}/{run_file}',
        shell=True)
    output_lst = output.split()

    J_measure = subprocess.check_output(
        f'python3 {measure_judged_path}--qrels {qrels} --cutoffs 10 5 1000 --run {runs}/{run_file}', shell=True)
    J_measure_lst = J_measure.split()

    clean_output = [float(output_lst[11]), float(J_measure_lst[2]), float(output_lst[8]), float(J_measure_lst[5]),
                    float(output_lst[14]), float(output_lst[5]), float(output_lst[2]), float(J_measure_lst[8])]
    return clean_output


def compare_score(actual_score, row, score_type_lst):
    run_name = row.run
    for i in range(len(actual_score)):
        expected_score = row[i + 4]
        if actual_score[i] != expected_score:
            score_type = score_type_lst[i]
            print(f"In the run {run_name}, the score for {score_type} doesn't match")
            print(f"The expected score is {expected_score}, but the actual score is {actual_score[i]}\n")
    if actual_score == row[4:].tolist():
        print(f"All scores in the run {run_name} match")


def create_runs_info(file):
    rootdir = reports + file + '.pdf'
    with open(rootdir, "rb") as f:
        context = pdftotext.PDF(f)
    context = list(context)
    team_name = ('_').join(re.findall('submitted from.+?\n', context[0])[0].split()[2:])
    runstype = re.findall('Topic type.+?Total number retrieved', context[0])[0].split()[2]
    jugement = re.findall('Contributed to judgment sets?.+?Total relevant', context[0])[0].split()[4]
    return [file, team_name, runstype, jugement]


def compare_score_dct():
    df = pd.read_csv(leaderboard_runs)
    score_type_lst = df.columns[4:]
    for index, row in df.iterrows():
        actual_score = create_file_dct(row.run)
        compare_score(actual_score, row, score_type_lst)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Compare all runs')
    parser.add_argument('--anserini_root', default='', help='Anserini path',required=True)
    parser.add_argument('--run_root', default='', help='root to the runs directory',required=True)
    parser.add_argument('--output_root', default='', help='path to the output csv file', required=True)
    args = parser.parse_args()
    qrels = os.path.join(args.anserini_root, 'src/main/resources/topics-and-qrels/qrels.covid-round3.txt')
    runs = os.path.join(args.run_root, 'runs')
    reports = os.path.join(args.run_root, 'reports/')
    leaderboard_runs = os.path.join(args.run_root, 'leaderboard.csv')

    compare_score_dct()

    df_lst = []
    for subdir, dirs, files in os.walk(runs):
        for file in files:
            file_lst = create_runs_info(file)
            file_lst.extend(create_file_dct(file))
            df_lst.append(file_lst)
    df_runs = pd.DataFrame(df_lst)
    df_runs.columns = ['run', 'team', 'runtype', 'contributed judgments', 'ndcg@10', 'J@10', 'P@5', 'J@5', 'rbp_p5',
                       'bpref', 'map', 'J@1000']

    df_runs = df_runs.sort_values(by=['ndcg@10'], ascending=False)
    df_runs.to_csv(args.output_root, index = False)
    print('Succesfully generate all runs score in '+args.output_root)
