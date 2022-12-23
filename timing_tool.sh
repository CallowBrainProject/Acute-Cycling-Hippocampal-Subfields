#!/bin/tcsh -f

foreach subj (ams1001 ams1002 ams1003 ams1004 ams1005 ams1006 ams1007 ams1008 ams1009 ams1010 ams1011 ams1012 ams1013 ams1014 ams1015 ams1016 ams1017 ams1018 ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1025 ams1026 ams1027 ams1028 ams1029 ams1030 ams1032 ams1033 ams1034 ams1035 ams1037 ams1038 ams1039 ams1040 ams1041)
foreach cond (ex rest)
echo ${subj}.${cond}
cd /Volumes/MRI_BACKUP/test/STIM/sub-${subj}/ses-${cond}/
timing_tool.py -fsl_timing_files MST1_FN_.tsv MST2_FN_.tsv -write_timing MST_FN_.1D
timing_tool.py -fsl_timing_files MST1_FO_.tsv MST2_FO_.tsv -write_timing MST_FO_.1D
timing_tool.py -fsl_timing_files MST1_FS_.tsv MST2_FS_.tsv -write_timing MST_FS_.1D
timing_tool.py -fsl_timing_files MST1_LN_.tsv MST2_LN_.tsv -write_timing MST_LN_.1D
timing_tool.py -fsl_timing_files MST1_LO_.tsv MST2_LO_.tsv -write_timing MST_LO_.1D
timing_tool.py -fsl_timing_files MST1_LS_.tsv MST2_LS_.tsv -write_timing MST_LS_.1D
timing_tool.py -fsl_timing_files MST1_TN_.tsv MST2_TN_.tsv -write_timing MST_TN_.1D
timing_tool.py -fsl_timing_files MST1_TO_.tsv MST2_TO_.tsv -write_timing MST_TO_.1D
timing_tool.py -fsl_timing_files MST1_TS_.tsv MST2_TS_.tsv -write_timing MST_TS_.1D
timing_tool.py -fsl_timing_files MST1_sLS_.tsv MST2_sLS_.tsv -write_timing MST_sLS_.1D
timing_tool.py -fsl_timing_files MST1_sLO_.tsv MST2_sLO_.tsv -write_timing MST_sLO_.1D
timing_tool.py -fsl_timing_files MST1_sTO_.tsv MST2_TS_.tsv -write_timing MST_sTO_.1D
timing_tool.py -fsl_timing_files MST1_junk_.tsv MST2_junk_.tsv -write_timing MST_junk_.1D

end
end
