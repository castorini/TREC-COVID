#!/bin/sh

./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/BBGhelani1 > runs/BBGhelani1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/BBGhelani2 > runs/BBGhelani2.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/BITEM_BL > runs/BITEM_BL.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/BITEM_df > runs/BITEM_df.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/BITEM_stem > runs/BITEM_stem.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/BRPHJ_NLP1 > runs/BRPHJ_NLP1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/BRPHJ_NLP2 > runs/BRPHJ_NLP2.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/BRPHJ_NLP3 > runs/BRPHJ_NLP3.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/BioinfoUA-emb > runs/BioinfoUA-emb.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/BioinfoUA-emb-q > runs/BioinfoUA-emb-q.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/BioinfoUA-noadapt > runs/BioinfoUA-noadapt.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/CSIROmedNIR > runs/CSIROmedNIR.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/CSIROmed_PE > runs/CSIROmed_PE.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/CSIROmed_RF > runs/CSIROmed_RF.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/CincyMedIR-run1 > runs/CincyMedIR-run1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/CincyMedIR-run2 > runs/CincyMedIR-run2.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/CincyMedIR-run3 > runs/CincyMedIR-run3.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/DA_IICT_all > runs/DA_IICT_all.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/DA_IICT_narr > runs/DA_IICT_narr.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/DA_IICT_narr_qe > runs/DA_IICT_narr_qe.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/elhuyar_indri > runs/elhuyar_indri.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/elhuyar_rRnk_cbert > runs/elhuyar_rRnk_cbert.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/elhuyar_rRnk_sbert > runs/elhuyar_rRnk_sbert.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/factum-1 > runs/factum-1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/run1 > runs/run1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/run2 > runs/run2.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/run3 > runs/run3.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/irc_entrez > runs/irc_entrez.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/irc_pmc > runs/irc_pmc.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/irc_pubmed > runs/irc_pubmed.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/Tetralogie0Fr > runs/Tetralogie0Fr.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/Tetralogie1Fr > runs/Tetralogie1Fr.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/IRIT_marked_base > runs/IRIT_marked_base.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/IRIT_marked_mu_pair > runs/IRIT_marked_mu_pair.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/IRIT_marked_un_pair > runs/IRIT_marked_un_pair.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/KU_run1 > runs/KU_run1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/KU_run2 > runs/KU_run2.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/KU_run3 > runs/KU_run3.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/ir_covid19_cle_dfr > runs/ir_covid19_cle_dfr.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/ir_covid19_cle_ib > runs/ir_covid19_cle_ib.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/ir_covid19_cle_lmd > runs/ir_covid19_cle_lmd.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/ERST_NARRATIVE > runs/ERST_NARRATIVE.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/ERST_PROSE > runs/ERST_PROSE.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/ERST_QUESTION > runs/ERST_QUESTION.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/dmis-rnd1-run1 > runs/dmis-rnd1-run1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/dmis-rnd1-run2 > runs/dmis-rnd1-run2.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/dmis-rnd1-run3 > runs/dmis-rnd1-run3.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/yn-r1-alltext > runs/yn-r1-alltext.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/yn-r1-concepttext > runs/yn-r1-concepttext.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/yn-r1-hierarchy > runs/yn-r1-hierarchy.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/NTU_NMLAB_BM25_ALLQQ > runs/NTU_NMLAB_BM25_ALLQQ.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/NTU_NMLAB_BM25_Hum2 > runs/NTU_NMLAB_BM25_Hum2.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/NTU_NMLAB_BM25_Human > runs/NTU_NMLAB_BM25_Human.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/OHSU_RUN1 > runs/OHSU_RUN1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/OHSU_RUN2 > runs/OHSU_RUN2.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/OHSU_RUN3 > runs/OHSU_RUN3.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/PS-r1-bm25all > runs/PS-r1-bm25all.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/PS-r1-bm25medical > runs/PS-r1-bm25medical.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/PS-r1-bm25none > runs/PS-r1-bm25none.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/poznan_run1 > runs/poznan_run1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/poznan_run2 > runs/poznan_run2.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/poznan_run3 > runs/poznan_run3.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/RMITBFuseM2 > runs/RMITBFuseM2.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/RMITBM1 > runs/RMITBM1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/RUIR-bm25-at-exp > runs/RUIR-bm25-at-exp.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/RUIR-bm25-mt-exp > runs/RUIR-bm25-mt-exp.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/RUIR-doc2vec > runs/RUIR-doc2vec.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/SFDC-23April-run1 > runs/SFDC-23April-run1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/SFDC-23April-run2 > runs/SFDC-23April-run2.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/savantx_nist_run_1 > runs/savantx_nist_run_1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/savantx_nist_run_2 > runs/savantx_nist_run_2.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/savantx_nist_run_3 > runs/savantx_nist_run_3.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/SinequaR1_1 > runs/SinequaR1_1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/SinequaR1_2 > runs/SinequaR1_2.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/SINEQUA > runs/SINEQUA.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/BERT > runs/BERT.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/Conv_KNRM > runs/Conv_KNRM.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/Meta-Conv-KNRM > runs/Meta-Conv-KNRM.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/TMACC_SeTA_baseline > runs/TMACC_SeTA_baseline.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/lda400s2000 > runs/lda400s2000.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/lda400s5000 > runs/lda400s5000.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/tm_lda400 > runs/tm_lda400.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/TU_Vienna_TKL_1 > runs/TU_Vienna_TKL_1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/TU_Vienna_TKL_2 > runs/TU_Vienna_TKL_2.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/Technion-JPD > runs/Technion-JPD.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/Technion-MEDMM > runs/Technion-MEDMM.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/Technion-RRF > runs/Technion-RRF.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/CBOWexp.0 > runs/CBOWexp.0.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/PL2c1.0 > runs/PL2c1.0.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/PL2c1.0_Bo1 > runs/PL2c1.0_Bo1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/UB_NLP_RUN_1 > runs/UB_NLP_RUN_1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/UIUC_DMG_setrank > runs/UIUC_DMG_setrank.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/UIUC_DMG_setrank_re > runs/UIUC_DMG_setrank_re.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/UIUC_DMG_setrank_ret > runs/UIUC_DMG_setrank_ret.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/UIowaS_Run1 > runs/UIowaS_Run1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/UIowaS_Run2 > runs/UIowaS_Run2.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/UIowaS_Run3 > runs/UIowaS_Run3.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/sheikh_bm25_all > runs/sheikh_bm25_all.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/sheikh_bm25_manual > runs/sheikh_bm25_manual.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/baseline > runs/baseline.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/crowd1 > runs/crowd1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/crowd2 > runs/crowd2.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/bm25_baseline > runs/bm25_baseline.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/bm25_basline > runs/bm25_basline.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/azimiv_wk1 > runs/azimiv_wk1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/cu_dbmi_bm25_1 > runs/cu_dbmi_bm25_1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/cu_dbmi_bm25_2 > runs/cu_dbmi_bm25_2.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/bm25t5 > runs/bm25t5.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/BM25R2 > runs/BM25R2.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/T5R1 > runs/T5R1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/T5R3 > runs/T5R3.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/ielab-prf > runs/ielab-prf.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/ielab-prf.2query.v3 > runs/ielab-prf.2query.v3.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/ielab-prf.recency > runs/ielab-prf.recency.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/ixa-ir-filter-narr > runs/ixa-ir-filter-narr.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/ixa-ir-filter-query > runs/ixa-ir-filter-query.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/ixa-ir-filter-quest > runs/ixa-ir-filter-quest.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/jlbase > runs/jlbase.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/jlprec > runs/jlprec.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/jlrecall > runs/jlrecall.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/sab20.1.blind > runs/sab20.1.blind.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/sab20.1.merged > runs/sab20.1.merged.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/sab20.1.meta.docs > runs/sab20.1.meta.docs.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/smith.bm25 > runs/smith.bm25.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/smith.ql > runs/smith.ql.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/smith.rm3 > runs/smith.rm3.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/tcs_ilabs_gg_r1 > runs/tcs_ilabs_gg_r1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/udel_fang_run1 > runs/udel_fang_run1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/udel_fang_run2 > runs/udel_fang_run2.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/udel_fang_run3 > runs/udel_fang_run3.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/10x10.prf.unipd.it > runs/10x10.prf.unipd.it.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/10x20.prf.unipd.it > runs/10x20.prf.unipd.it.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/base.unipd.it > runs/base.unipd.it.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/UP-cqqrnd1 > runs/UP-cqqrnd1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/UP-rrf5rnd1 > runs/UP-rrf5rnd1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/UP-sdqrnd1 > runs/UP-sdqrnd1.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/uogTrDPH_QE > runs/uogTrDPH_QE.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/uogTrDPH_QE_QQ > runs/uogTrDPH_QE_QQ.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/uogTrDPH_prox_QQ > runs/uogTrDPH_prox_QQ.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/wistud_bing > runs/wistud_bing.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/wistud_indri > runs/wistud_indri.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/wistud_noSearch > runs/wistud_noSearch.trec_eval
./trec_eval -c -q -M1000 -m all_trec qrels/qrels-rnd1.txt runs/xj4wang_run1 > runs/xj4wang_run1.trec_eval