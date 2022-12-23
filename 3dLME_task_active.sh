#!/bin/tcsh -f
setenv fulloutdir /Volumes/MRI_BACKUP/test/AMS_Analysis_new

#3dresample -input /Volumes/MRI_BACKUP/test/MNI152_T1_1mm_brain.nii.gz -master ${fulloutdir}/sub-ams1001/ses-ex/sub-ams1001_ses-ex_REML+tlrc -prefix /Volumes/MRI_BACKUP/test/MNI152_T1_1mm_brain_RS.nii.gz -overwrite
mkdir /Volumes/MRI_BACKUP/test/AMS_Analysis_new
cd /Volumes/MRI_BACKUP/test/AMS_Analysis_new
#Group A = MCI | Group B = HC
3dLME -prefix AMS_Cond_SimLurevsOldLure_LME_hipp -jobs 6 \
-model 'Contrast+Order+Hand+Age' -ranEff '~1' -SS_type 3 \
-num_glt 1 \
-gltLabel 1 'Contrast' -gltCode 1 'Contrast : 1*Lure' \
#-mask /Volumes/MRI_BACKUP/test/MTL_MD2mask.nii.gz \
-mask /Volumes/MRI_BACKUP/test/Harvard_bilat_hippocampus_40.nii.gz \
-resid resid_SimLurevsOldLure_lme_hipp.nii.gz \
-qVars "Age" \
-dataTable \
Subj      Contrast  Order Hand   Age   InputFile \
AMS1001 Lure A R 69 ${fulloutdir}/sub-ams1001/ses-ex/sub-ams1001_ses-ex_REML+tlrc'[81]' \
AMS1002 Lure B R 65 ${fulloutdir}/sub-ams1002/ses-ex/sub-ams1002_ses-ex_REML+tlrc'[81]' \
AMS1003 Lure B L 71 ${fulloutdir}/sub-ams1003/ses-ex/sub-ams1003_ses-ex_REML+tlrc'[81]' \
AMS1004 Lure A R 63 ${fulloutdir}/sub-ams1004/ses-ex/sub-ams1004_ses-ex_REML+tlrc'[81]' \
AMS1005 Lure B R 64 ${fulloutdir}/sub-ams1005/ses-ex/sub-ams1005_ses-ex_REML+tlrc'[81]' \
AMS1006 Lure A R 67 ${fulloutdir}/sub-ams1006/ses-ex/sub-ams1006_ses-ex_REML+tlrc'[81]' \
AMS1007 Lure A R 71 ${fulloutdir}/sub-ams1007/ses-ex/sub-ams1007_ses-ex_REML+tlrc'[81]' \
AMS1008 Lure A R 65 ${fulloutdir}/sub-ams1008/ses-ex/sub-ams1008_ses-ex_REML+tlrc'[81]' \
AMS1009 Lure B L 61 ${fulloutdir}/sub-ams1009/ses-ex/sub-ams1009_ses-ex_REML+tlrc'[81]' \
AMS1010 Lure B R 64 ${fulloutdir}/sub-ams1010/ses-ex/sub-ams1010_ses-ex_REML+tlrc'[81]' \
AMS1011 Lure B R 65 ${fulloutdir}/sub-ams1011/ses-ex/sub-ams1011_ses-ex_REML+tlrc'[81]' \
AMS1012 Lure A R 64 ${fulloutdir}/sub-ams1012/ses-ex/sub-ams1012_ses-ex_REML+tlrc'[81]' \
AMS1013 Lure B R 70 ${fulloutdir}/sub-ams1013/ses-ex/sub-ams1013_ses-ex_REML+tlrc'[81]' \
AMS1014 Lure A R 75 ${fulloutdir}/sub-ams1014/ses-ex/sub-ams1014_ses-ex_REML+tlrc'[81]' \
AMS1015 Lure A R 69 ${fulloutdir}/sub-ams1015/ses-ex/sub-ams1015_ses-ex_REML+tlrc'[81]' \
AMS1016 Lure B R 66 ${fulloutdir}/sub-ams1016/ses-ex/sub-ams1016_ses-ex_REML+tlrc'[81]' \
AMS1017 Lure B R 60 ${fulloutdir}/sub-ams1017/ses-ex/sub-ams1017_ses-ex_REML+tlrc'[81]' \
#AMS1018 Lure A R 62 ${fulloutdir}/sub-ams1018/ses-ex/sub-ams1018_ses-ex_REML+tlrc'[81]' \
AMS1019 Lure B R 70 ${fulloutdir}/sub-ams1019/ses-ex/sub-ams1019_ses-ex_REML+tlrc'[81]' \
#AMS1020 Lure A R 76 ${fulloutdir}/sub-ams1020/ses-ex/sub-ams1020_ses-ex_REML+tlrc'[81]' \
AMS1021 Lure A R 69 ${fulloutdir}/sub-ams1021/ses-ex/sub-ams1021_ses-ex_REML+tlrc'[81]' \
AMS1022 Lure A R 72 ${fulloutdir}/sub-ams1022/ses-ex/sub-ams1022_ses-ex_REML+tlrc'[81]' \
AMS1023 Lure B R 66 ${fulloutdir}/sub-ams1023/ses-ex/sub-ams1023_ses-ex_REML+tlrc'[81]' \
AMS1024 Lure B L 73 ${fulloutdir}/sub-ams1024/ses-ex/sub-ams1024_ses-ex_REML+tlrc'[81]' \
#AMS1025 Lure B R 60 ${fulloutdir}/sub-ams1025/ses-ex/sub-ams1025_ses-ex_REML+tlrc'[81]' \
AMS1026 Lure B R 76 ${fulloutdir}/sub-ams1026/ses-ex/sub-ams1026_ses-ex_REML+tlrc'[81]' \
AMS1027 Lure B R 62 ${fulloutdir}/sub-ams1027/ses-ex/sub-ams1027_ses-ex_REML+tlrc'[81]' \
AMS1028 Lure A R 69 ${fulloutdir}/sub-ams1028/ses-ex/sub-ams1028_ses-ex_REML+tlrc'[81]' \
AMS1029 Lure A R 74 ${fulloutdir}/sub-ams1029/ses-ex/sub-ams1029_ses-ex_REML+tlrc'[81]' \
AMS1030 Lure A R 74 ${fulloutdir}/sub-ams1030/ses-ex/sub-ams1030_ses-ex_REML+tlrc'[81]' \
#AMS1031 Lure B L 70 ${fulloutdir}/sub-ams1031/ses-ex/sub-ams1031_ses-ex_REML+tlrc'[81]' \
AMS1032 Lure B R 61 ${fulloutdir}/sub-ams1032/ses-ex/sub-ams1032_ses-ex_REML+tlrc'[81]' \
AMS1033 Lure A R 65 ${fulloutdir}/sub-ams1033/ses-ex/sub-ams1033_ses-ex_REML+tlrc'[81]' \
#AMS1034 Lure B L 60 ${fulloutdir}/sub-ams1034/ses-ex/sub-ams1034_ses-ex_REML+tlrc'[81]' \
AMS1035 Lure A R 68 ${fulloutdir}/sub-ams1035/ses-ex/sub-ams1035_ses-ex_REML+tlrc'[81]' \
AMS1037 Lure B R 70 ${fulloutdir}/sub-ams1037/ses-ex/sub-ams1037_ses-ex_REML+tlrc'[81]' \
AMS1038 Lure B R 65 ${fulloutdir}/sub-ams1038/ses-ex/sub-ams1038_ses-ex_REML+tlrc'[81]' \
AMS1039 Lure B R 64 ${fulloutdir}/sub-ams1039/ses-ex/sub-ams1039_ses-ex_REML+tlrc'[81]' \
AMS1040 Lure B R 62 ${fulloutdir}/sub-ams1040/ses-ex/sub-ams1040_ses-ex_REML+tlrc'[81]' \
AMS1041 Lure A R 67 ${fulloutdir}/sub-ams1041/ses-ex/sub-ams1041_ses-ex_REML+tlrc'[81]' \
AMS1001 Lure A R 69 ${fulloutdir}/sub-ams1001/ses-rest/sub-ams1001_ses-rest_REML+tlrc'[81]' \
AMS1002 Lure B R 65 ${fulloutdir}/sub-ams1002/ses-rest/sub-ams1002_ses-rest_REML+tlrc'[81]' \
AMS1003 Lure B L 71 ${fulloutdir}/sub-ams1003/ses-rest/sub-ams1003_ses-rest_REML+tlrc'[81]' \
AMS1004 Lure A R 63 ${fulloutdir}/sub-ams1004/ses-rest/sub-ams1004_ses-rest_REML+tlrc'[81]' \
AMS1005 Lure B R 64 ${fulloutdir}/sub-ams1005/ses-rest/sub-ams1005_ses-rest_REML+tlrc'[81]' \
AMS1006 Lure A R 67 ${fulloutdir}/sub-ams1006/ses-rest/sub-ams1006_ses-rest_REML+tlrc'[81]' \
AMS1007 Lure A R 71 ${fulloutdir}/sub-ams1007/ses-rest/sub-ams1007_ses-rest_REML+tlrc'[81]' \
AMS1008 Lure A R 65 ${fulloutdir}/sub-ams1008/ses-rest/sub-ams1008_ses-rest_REML+tlrc'[81]' \
AMS1009 Lure B L 61 ${fulloutdir}/sub-ams1009/ses-rest/sub-ams1009_ses-rest_REML+tlrc'[81]' \
AMS1010 Lure B R 64 ${fulloutdir}/sub-ams1010/ses-rest/sub-ams1010_ses-rest_REML+tlrc'[81]' \
AMS1011 Lure B R 65 ${fulloutdir}/sub-ams1011/ses-rest/sub-ams1011_ses-rest_REML+tlrc'[81]' \
AMS1012 Lure A R 64 ${fulloutdir}/sub-ams1012/ses-rest/sub-ams1012_ses-rest_REML+tlrc'[81]' \
AMS1013 Lure B R 70 ${fulloutdir}/sub-ams1013/ses-rest/sub-ams1013_ses-rest_REML+tlrc'[81]' \
AMS1014 Lure A R 75 ${fulloutdir}/sub-ams1014/ses-rest/sub-ams1014_ses-rest_REML+tlrc'[81]' \
AMS1015 Lure A R 69 ${fulloutdir}/sub-ams1015/ses-rest/sub-ams1015_ses-rest_REML+tlrc'[81]' \
AMS1016 Lure B R 66 ${fulloutdir}/sub-ams1016/ses-rest/sub-ams1016_ses-rest_REML+tlrc'[81]' \
AMS1017 Lure B R 60 ${fulloutdir}/sub-ams1017/ses-rest/sub-ams1017_ses-rest_REML+tlrc'[81]' \
#AMS1018 Lure A R 62 ${fulloutdir}/sub-ams1018/ses-rest/sub-ams1018_ses-rest_REML+tlrc'[81]' \
AMS1019 Lure B R 70 ${fulloutdir}/sub-ams1019/ses-rest/sub-ams1019_ses-rest_REML+tlrc'[81]' \
#AMS1020 Lure A R 76 ${fulloutdir}/sub-ams1020/ses-rest/sub-ams1020_ses-rest_REML+tlrc'[81]' \
AMS1021 Lure A R 69 ${fulloutdir}/sub-ams1021/ses-rest/sub-ams1021_ses-rest_REML+tlrc'[81]' \
AMS1022 Lure A R 72 ${fulloutdir}/sub-ams1022/ses-rest/sub-ams1022_ses-rest_REML+tlrc'[81]' \
AMS1023 Lure B R 66 ${fulloutdir}/sub-ams1023/ses-rest/sub-ams1023_ses-rest_REML+tlrc'[81]' \
AMS1024 Lure B L 73 ${fulloutdir}/sub-ams1024/ses-rest/sub-ams1024_ses-rest_REML+tlrc'[81]' \
#AMS1025 Lure B R 60 ${fulloutdir}/sub-ams1025/ses-rest/sub-ams1025_ses-rest_REML+tlrc'[81]' \
AMS1026 Lure B R 76 ${fulloutdir}/sub-ams1026/ses-rest/sub-ams1026_ses-rest_REML+tlrc'[81]' \
AMS1027 Lure B R 76 ${fulloutdir}/sub-ams1027/ses-rest/sub-ams1027_ses-rest_REML+tlrc'[81]' \
AMS1028 Lure A R 69 ${fulloutdir}/sub-ams1028/ses-rest/sub-ams1028_ses-rest_REML+tlrc'[81]' \
AMS1029 Lure A R 74 ${fulloutdir}/sub-ams1029/ses-rest/sub-ams1029_ses-rest_REML+tlrc'[81]' \
AMS1030 Lure A R 60 ${fulloutdir}/sub-ams1030/ses-rest/sub-ams1030_ses-rest_REML+tlrc'[81]' \
#AMS1031 Lure B L 70 ${fulloutdir}/sub-ams1031/ses-rest/sub-ams1031_ses-rest_REML+tlrc'[81]' \
AMS1032 Lure B R 61 ${fulloutdir}/sub-ams1032/ses-rest/sub-ams1032_ses-rest_REML+tlrc'[81]' \
AMS1033 Lure A R 65 ${fulloutdir}/sub-ams1033/ses-rest/sub-ams1033_ses-rest_REML+tlrc'[81]' \
#AMS1034 Lure B L 60 ${fulloutdir}/sub-ams1034/ses-rest/sub-ams1034_ses-rest_REML+tlrc'[81]' \
AMS1035 Lure A R 68 ${fulloutdir}/sub-ams1035/ses-rest/sub-ams1035_ses-rest_REML+tlrc'[81]' \
AMS1037 Lure B R 70 ${fulloutdir}/sub-ams1037/ses-rest/sub-ams1037_ses-rest_REML+tlrc'[81]' \
AMS1038 Lure B R 65 ${fulloutdir}/sub-ams1038/ses-rest/sub-ams1038_ses-rest_REML+tlrc'[81]' \
AMS1039 Lure B R 64 ${fulloutdir}/sub-ams1039/ses-rest/sub-ams1039_ses-rest_REML+tlrc'[81]' \
AMS1040 Lure B R 62 ${fulloutdir}/sub-ams1040/ses-rest/sub-ams1040_ses-rest_REML+tlrc'[81]' \
AMS1041 Lure A R 67 ${fulloutdir}/sub-ams1041/ses-rest/sub-ams1041_ses-rest_REML+tlrc'[81]'
