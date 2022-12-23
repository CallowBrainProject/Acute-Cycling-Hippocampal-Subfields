#!/bin/tcsh -f

setenv fullindir /Volumes/MRI_BACKUP/test/fmriprep/
setenv fulloutdir /Volumes/MRI_BACKUP/test/AMS_Analysis_new
setenv stimdir /Volumes/MRI_BACKUP/test/STIM

#python final_confound_editor.py

set echo
echo ${fullindir}

foreach subj (ams1001 ams1002 ams1003 ams1004 ams1005 ams1006 ams1007 ams1008 ams1009 ams1010 ams1011 ams1012 ams1013 ams1014 ams1015 ams1016 ams1017 ams1018 ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1025 ams1026 ams1027 ams1028 ams1029 ams1030 ams1032 ams1033 ams1034 ams1035 ams1037 ams1038 ams1039 ams1040 ams1041)
echo ${subj}

# Create confound file for exercise and rest conditions
#rm -rf /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses_rest_all_confounds.tsv
#if ( ! -d "${fullindir}/sub-${subj}/ses_ex_all_confounds.tsv" ) then
#  echo Making the all_confounds file
#  tail -n +1 -q ${fullindir}/sub-${subj}/ses-ex/func/final_confoundssub-${subj}_ses-ex_task-MST?_run-1_desc-confounds_timeseries.tsv > ${fullindir}/sub-${subj}/ses_ex_all_confounds.tsv
#endif

#python /Volumes/MRI_BACKUP/test/create_fmriprep_censor.py ${fullindir}/sub-${subj}/ses_ex_all_confounds.tsv
#mv /Volumes/MRI_BACKUP/test/fmriprep_censor.1D ${fullindir}/sub-${subj}/ex_fmriprep_censor.1D


#if ( ! -d "${fullindir}/sub-${subj}/ses_rest_all_confounds.tsv" ) then
#  echo Making the all_confounds file
#  tail -n +1 -q ${fullindir}/sub-${subj}/ses-rest/func/final_confoundssub-${subj}_ses-rest_task-MST?_run-1_desc-confounds_timeseries.tsv > ${fullindir}/sub-${subj}/ses_rest_all_confounds.tsv
#endif
#python /Volumes/MRI_BACKUP/test/create_fmriprep_censor.py ${fullindir}/sub-${subj}/ses_rest_all_confounds.tsv
#mv /Volumes/MRI_BACKUP/test/fmriprep_censor.1D ${fullindir}/sub-${subj}/rest_fmriprep_censor.1D

end


foreach subj (ams1001 ams1002 ams1003 ams1004 ams1005 ams1006 ams1007 ams1008 ams1009 ams1010 ams1011 ams1012 ams1013 ams1014 ams1015 ams1016 ams1017 ams1018 ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1025 ams1026 ams1027 ams1028 ams1029 ams1030 ams1032 ams1033 ams1034 ams1035 ams1037 ams1038 ams1039 ams1040 ams1041)
foreach cond (ex rest)
#rm -rf ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST1_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc-blur*_bol*.nii.gz
#rm -rf ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST2_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc-blur*_bol*.nii.gz
#rm -rf ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST1_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc_scale-bold*.nii.gz
#rm -rf ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST2_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc_scale-bold*.nii.gz
#rm -rf ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST1_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc_scale-bol*.nii.gz
#rm -rf ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST2_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc_scale-bol*.nii.gz
#rm -rf ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST1_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc_mean-bol*.nii.gz
#rm -rf ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST2_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc_mean-bol*.nii.gz
#rm -rf ${fullindir}/sub-${subj}/ses-${cond}/func/sub-ams1001_ses-${cond}_task-MST2_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc-blur*_mean_bold.nii.gz
#rm -rf ${fullindir}/sub-${subj}/ses-${cond}/func/sub-ams1001_ses-${cond}_task-MST2_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc-blur*_mean_bold.nii.gz
#rm -rf ${fullindir}/sub-${subj}/ses-${cond}/func/sub-ams1001_ses-${cond}_task-MST2_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc-blur*_scale_bold.nii.gz
#rm -rf ${fullindir}/sub-${subj}/ses-${cond}/func/sub-ams1001_ses-${cond}_task-MST2_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc-blur*_scale_bold.nii.gz

end
end
# ams1001 ams1002 ams1003 ams1004 ams1005 ams1006 ams1007 ams1008 ams1009 ams1010 ams1011 ams1012 ams1013 ams1014 ams1015 ams1016 ams1017 ams1018 ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1026 ams1027 ams1028 ams1029 ams1030 ams1031 ams1032 ams1033 ams1034 ams1035
# ams1001 ams1002 ams1003 ams1004 ams1005 ams1006 ams1007 ams1008 ams1009 ams1010 ams1011 ams1012 ams1013 ams1014 ams1015 ams1016 ams1017 ams1018 ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1025 ams1026 ams1027 ams1028 ams1029 ams1030 ams1032 ams1033 ams1034 ams1035 ams1037 ams1038 ams1039 ams1040 ams1041
foreach subj (ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1025 ams1026 ams1027 ams1028 ams1029 ams1030 ams1032 ams1033 ams1034 ams1035 ams1037 ams1038 ams1039 ams1040 ams1041)

fslmaths ${fullindir}/sub-${subj}/ses-ex/func/sub-${subj}_ses-ex_task-MST1_run-1_space-MNI152NLin2009cAsym_res-1_desc-brain_mask.nii.gz -mul ${fullindir}/sub-${subj}/ses-rest/func/sub-${subj}_ses-rest_task-MST1_run-1_space-MNI152NLin2009cAsym_res-1_desc-brain_mask.nii.gz -mul ${fullindir}/sub-${subj}/ses-rest/func/sub-${subj}_ses-rest_task-MST2_run-1_space-MNI152NLin2009cAsym_res-1_desc-brain_mask.nii.gz -mul ${fullindir}/sub-${subj}/ses-rest/func/sub-${subj}_ses-rest_task-MST1_run-1_space-MNI152NLin2009cAsym_res-1_desc-brain_mask.nii.gz ${fullindir}/sub-${subj}/sub-${subj}_full-brain_mask.nii.gz \

foreach cond (ex rest)
echo ${subj}.${cond}

# Blur Image
#rm -rf ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST1_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc-blur2_bold*.nii.gz
#3dmerge -1blur_fwhm 2.0 -doall -prefix ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST1_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc-blur2_bold.nii.gz ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST1_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc_bold.nii.gz -overwrite
#rm -rf ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST2_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc-blur2_bold*.nii.gz
#3dmerge -1blur_fwhm 2.0 -doall -prefix ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST2_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc-blur2_bold.nii.gz ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST2_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc_bold.nii.gz -overwrite

#3dTstat -prefix ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST1_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc_mean-bold2.nii.gz ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST1_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc-blur2_bold.nii.gz -overwrite
#3dcalc -a ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST1_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc-blur2_bold.nii.gz -b ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST1_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc_mean-bold2.nii.gz \
#        -c ${fullindir}/sub-${subj}/sub-${subj}_full-brain_mask.nii.gz                            \
#        -expr 'c * min(200, a/b*100)*step(a)*step(b)'       \
#        -prefix ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST1_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc_scale-bold2.nii.gz -overwrite

#3dTstat -prefix ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST2_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc_mean-bold2.nii.gz ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST2_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc-blur2_bold.nii.gz -overwrite
#3dcalc -a ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST2_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc-blur2_bold.nii.gz -b ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST2_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc_mean-bold2.nii.gz \
#       -c ${fullindir}/sub-${subj}/sub-${subj}_full-brain_mask.nii.gz                            \
#       -expr 'c * min(200, a/b*100)*step(a)*step(b)'       \
#       -prefix ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST2_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc_scale-bold2.nii.gz -overwrite


# Create output directory
mkdir ${fulloutdir}/sub-${subj}/
mkdir ${fulloutdir}/sub-${subj}/ses-${cond}/

3dDeconvolve -input \
${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST1_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc_scale-bold2.nii.gz \
${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST2_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc_scale-bold2.nii.gz \
-mask ${fullindir}/sub-${subj}/sub-${subj}_full-brain_mask.nii.gz \
-num_stimts 19 \
-censor ${fullindir}/sub-${subj}/${cond}_fmriprep_censor.1D \
-polort A \
-x1D_stop \
-jobs 8 \
-local_times \
-stim_times_subtract .945 \
-stim_times 1 ${stimdir}/sub-${subj}/ses-${cond}/MST_FN_.1D 'TENT(0,16,9)' -stim_label 1 NewFoil \
-stim_times 2 ${stimdir}/sub-${subj}/ses-${cond}/MST_sLO_.1D 'TENT(0,16,9)' -stim_label 2 sOldLure \
-stim_times 3 ${stimdir}/sub-${subj}/ses-${cond}/MST_sLS_.1D 'TENT(0,16,9)' -stim_label 3 sSimLure \
-stim_times 4 ${stimdir}/sub-${subj}/ses-${cond}/MST_sTO_.1D 'TENT(0,16,9)' -stim_label 4 sOldTarg \
-stim_times 5 ${stimdir}/sub-${subj}/ses-${cond}/MST_LO_.1D 'TENT(0,16,9)' -stim_label 5 OldLure \
-stim_times 6 ${stimdir}/sub-${subj}/ses-${cond}/MST_LS_.1D 'TENT(0,16,9)' -stim_label 6 SimLure \
-stim_times 7 ${stimdir}/sub-${subj}/ses-${cond}/MST_TO_.1D 'TENT(0,16,9)' -stim_label 7 OldTarg \
-stim_times 8 ${stimdir}/sub-${subj}/ses-${cond}/MST_TS_.1D 'TENT(0,16,9)' -stim_label 8 SimTarg \
-stim_file 9 ${fullindir}/sub-${subj}/ses_${cond}_all_confounds.tsv'[1]' -stim_base 9 -stim_label 9 'CSF' \
-stim_file 10 ${fullindir}/sub-${subj}/ses_${cond}_all_confounds.tsv'[2]' -stim_base 10 -stim_label 10 'WM' \
-stim_file 11 ${fullindir}/sub-${subj}/ses_${cond}_all_confounds.tsv'[3]' -stim_base 11 -stim_label 11 'FD' \
-stim_file 12 ${fullindir}/sub-${subj}/ses_${cond}_all_confounds.tsv'[4]' -stim_base 12 -stim_label 12 'acc00' \
-stim_file 13 ${fullindir}/sub-${subj}/ses_${cond}_all_confounds.tsv'[5]' -stim_base 13 -stim_label 13 'acc01' \
-stim_file 14 ${fullindir}/sub-${subj}/ses_${cond}_all_confounds.tsv'[6]' -stim_base 14 -stim_label 14 'rotx' \
-stim_file 15 ${fullindir}/sub-${subj}/ses_${cond}_all_confounds.tsv'[7]' -stim_base 15 -stim_label 15 'roty' \
-stim_file 16 ${fullindir}/sub-${subj}/ses_${cond}_all_confounds.tsv'[8]' -stim_base 16 -stim_label 16 'rotz' \
-stim_file 17 ${fullindir}/sub-${subj}/ses_${cond}_all_confounds.tsv'[9]' -stim_base 17 -stim_label 17 'trans_x' \
-stim_file 18 ${fullindir}/sub-${subj}/ses_${cond}_all_confounds.tsv'[10]' -stim_base 18 -stim_label 18 'trans_y' \
-stim_file 19 ${fullindir}/sub-${subj}/ses_${cond}_all_confounds.tsv'[11]' -stim_base 19 -stim_label 19 'trans_z' \
-gltsym 'SYM: +SimLure[1..5] -OldLure[1..5]' -glt_label 1 SimLure-OldLure \
-gltsym 'SYM: +SimLure[1..5] -NewFoil[1..5]' -glt_label 2 SimLure-NewFoil \
-gltsym 'SYM: +OldTarg[1..5] -NewFoil[1..5]' -glt_label 3 OldTarg-NewFoil \
-gltsym 'SYM: +sSimLure[1..5] -sOldLure[1..5]' -glt_label 4 sSimLure-sOldLure \
#-errts ${fulloutdir}/sub-${subj}/ses-${cond}/sub-${subj}_ses-${cond}_deconvolve_errts \
#-bucket ${fulloutdir}/sub-${subj}/ses-${cond}/sub-${subj}_ses-${cond}_deconvolve \
-x1D ${fulloutdir}/sub-${subj}/ses-${cond}/sub-${subj}_ses-${cond}.xmat.1D -x1D_uncensored ${fulloutdir}/sub-${subj}/ses-${cond}/sub-${subj}_ses-${cond}.xmat.uncensored.1D \
-fout -nocout -overwrite
#rm -rf ${fulloutdir}/sub-${subj}/ses-${cond}/*REML*
end
end

# ams1001 ams1002 ams1003 ams1004 ams1005 ams1006 ams1007 ams1008 ams1009 ams1010 ams1011 ams1012 ams1013 ams1014 ams1015 ams1016 ams1017 ams1018 ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1026 ams1027 ams1028 ams1029 ams1030 ams1031 ams1032 ams1033 ams1034 ams1035
#  ams1040 ams1041
# ams1001 ams1002 ams1003 ams1004 ams1005 ams1006 ams1007 ams1008 ams1009 ams1010 ams1011 ams1012 ams1013 ams1014 ams1015 ams1016 ams1017 ams1018 ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1025 ams1026 ams1027 ams1028 ams1029 ams1030 ams1032 ams1033 ams1034 ams1035 ams1037 ams1038 ams1039
foreach subj (ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1025 ams1026 ams1027 ams1028 ams1029 ams1030 ams1032 ams1033 ams1034 ams1035 ams1037 ams1038 ams1039 ams1040 ams1041)
foreach cond (ex rest)
cd ${fulloutdir}/sub-${subj}/ses-${cond}/
3dREMLfit -matrix ${fulloutdir}/sub-${subj}/ses-${cond}/sub-${subj}_ses-${cond}.xmat.1D \
-input "${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST?_run-1_space-MNI152NLin2009cAsym_res-1_desc-preproc_scale-bold2.nii.gz" \
-mask ${fullindir}/sub-${subj}/ses-${cond}/func/sub-${subj}_ses-${cond}_task-MST1_run-1_space-MNI152NLin2009cAsym_res-1_desc-brain_mask.nii.gz \
-Rvar ${fulloutdir}/sub-${subj}/ses-${cond}/sub-${subj}_ses-${cond}_REMLvar \
-Rbuck ${fulloutdir}/sub-${subj}/ses-${cond}/sub-${subj}_ses-${cond}_REML \
-Rerrts ${fulloutdir}/sub-${subj}/ses-${cond}/sub-${subj}_ses-${cond}_REMLerrts \
#-Rfitts ${fulloutdir}/sub-${subj}/ses-${cond}/sub-${subj}_ses-${cond}_REMLfitts \
-fout -verb $* -GOFORIT -overwrite

end
end
