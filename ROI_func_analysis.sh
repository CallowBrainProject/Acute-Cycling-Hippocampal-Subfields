#!/bin/tcsh -f
setenv fulloutdir /Volumes/MRI_BACKUP/test/AMS_Analysis_new
setenv ashsdir /Volumes/MRI_BACKUP/test/Diffusion/ASHS

cd /Volumes/MRI_BACKUP/test/AMS_Analysis_new


foreach subj (ams1001 ams1002 ams1003 ams1004 ams1005 ams1006 ams1007 ams1008 ams1009 ams1010 ams1011 ams1012 ams1013 ams1014 ams1015 ams1016 ams1017 ams1018 ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1025 ams1026 ams1027 ams1028 ams1029 ams1030 ams1032 ams1033 ams1034 ams1035 ams1037 ams1038 ams1039 ams1040 ams1041)
foreach cond (ex rest)
echo ${subj}.${cond}

cd ${fulloutdir}/sub-${subj}/ses-${cond}

#3dmerge -dxyz=1 -1clust 1 20 -1thresh 1.3 -prefix ${subj}_${cond}_thesh_fstat_1.3_20.nii.gz ${fulloutdir}/sub-${subj}/ses-${cond}/sub-${subj}_ses-${cond}_REML+tlrc'[0]' -overwrite

end
end

foreach subj (ams1001 ams1002 ams1003 ams1004 ams1005 ams1006 ams1007 ams1008 ams1009 ams1010 ams1011 ams1012 ams1013 ams1014 ams1015 ams1016 ams1017 ams1018 ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1025 ams1026 ams1027 ams1028 ams1029 ams1030 ams1032 ams1033 ams1034 ams1035 ams1037 ams1038 ams1039 ams1040 ams1041)
fslmaths ${fulloutdir}/sub-${subj}/ses-ex/${subj}_ex_thesh_fstat_1.3_20.nii.gz -add ${fulloutdir}/sub-${subj}/ses-rest/${subj}_rest_thesh_fstat_1.3_20.nii.gz -bin ${fulloutdir}/sub-${subj}/${subj}_thresh_fstat_1.3_20.nii.gz
end

# ams1001 ams1002 ams1003 ams1004 ams1005 ams1006 ams1007 ams1008 ams1009 ams1010 ams1011 ams1012 ams1013 ams1014 ams1015 ams1016 ams1017 ams1018 ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1025 ams1026 ams1027 ams1028 ams1029 ams1030 ams1032 ams1033 ams1034 ams1035 ams1037 ams1038 ams1039 ams1040 ams1041
foreach subj (ams1001 ams1002 ams1003 ams1004 ams1005 ams1006 ams1007 ams1008 ams1009 ams1010 ams1011 ams1012 ams1013 ams1014 ams1015 ams1016 ams1017 ams1018 ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1025 ams1026 ams1027 ams1028 ams1029 ams1030 ams1032 ams1033 ams1034 ams1035 ams1037 ams1038 ams1039 ams1040 ams1041)
foreach cond (ex rest)
echo ${subj}.${cond}

cd ${fulloutdir}/sub-${subj}/ses-${cond}

fslmaths ${ashsdir}/sub-${subj}/ses-${cond}/final/${subj}_${cond}_left_lfseg_corr_usegray.nii.gz -add ${ashsdir}/sub-${subj}/ses-${cond}/final/${subj}_${cond}_right_lfseg_corr_usegray.nii.gz bilat_subfield.nii.gz
cp ${ashsdir}/sub-${subj}/ses-${cond}/mprage.nii.gz T1_skull.nii.gz

/Applications/c3d/bin/c3d_affine_tool  ${ashsdir}/sub-${subj}/ses-${cond}/flirt_t2_to_t1/flirt_t2_to_t1.mat -inv -oitk t2_to_t1.mat
#antsApplyTransforms -d 3 -n MultiLabel -i bilat_subfield.nii.gz -r T1_skull.nii.gz -t "[t2_to_t1.mat]" -o bilat_T1.nii.gz
#antsApplyTransforms -d 3 -n MultiLabel -i bilat_T1.nii.gz  -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_desc-preproc_T1w.nii.gz -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1_from-orig_to-T1w_mode-image_xfm.txt]" -o bilat_template.nii.gz
#antsApplyTransforms -d 3 -n MultiLabel -i bilat_T1.nii.gz  -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_desc-preproc_T1w.nii.gz -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1norm_from-orig_to-T1w_mode-image_xfm.txt]" -o bilat_template.nii.gz
#antsApplyTransforms -d 3 -n MultiLabel -i bilat_T1.nii.gz  -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_acq-1norm_desc-preproc_T1w.nii.gz -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1norm_from-orig_to-T1w_mode-image_xfm.txt]" -o bilat_template.nii.gz

antsApplyTransforms -d 3 -n MultiLabel -i bilat_subfield.nii.gz -r /Volumes/MRI_BACKUP/test/MNI152_T1_1mm_brain.nii.gz -t /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_from-T1w_to-MNI152NLin2009cAsym_mode-image_xfm.h5 -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1_from-orig_to-T1w_mode-image_xfm.txt]" -t t2_to_t1.mat -o bilat_MNI.nii.gz
antsApplyTransforms -d 3 -n MultiLabel -i bilat_subfield.nii.gz -r /Volumes/MRI_BACKUP/test/MNI152_T1_1mm_brain.nii.gz -t /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_from-T1w_to-MNI152NLin2009cAsym_mode-image_xfm.h5 -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1norm_from-orig_to-T1w_mode-image_xfm.txt]" -t t2_to_t1.mat -o bilat_MNI.nii.gz
antsApplyTransforms -d 3 -n MultiLabel -i bilat_subfield.nii.gz -r /Volumes/MRI_BACKUP/test/MNI152_T1_1mm_brain.nii.gz -t /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_acq-1norm_from-T1w_to-MNI152NLin2009cAsym_mode-image_xfm.h5 -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1norm_from-orig_to-T1w_mode-image_xfm.txt]" -t t2_to_t1.mat -o bilat_MNI.nii.gz

end
end

#ams1001 ams1002 ams1003 ams1004 ams1005 ams1006 ams1007 ams1008 ams1009 ams1010 ams1011 ams1012 ams1013 ams1014 ams1015 ams1016 ams1017 ams1018 ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1025 ams1026 ams1027 ams1028 ams1029 ams1030 ams1032 ams1033 ams1034 ams1035 ams1037 ams1038 ams1039 ams1040 ams1041
foreach subj (ams1001 ams1002 ams1003 ams1004 ams1005 ams1006 ams1007 ams1008 ams1009 ams1010 ams1011 ams1012 ams1013 ams1014 ams1015 ams1016 ams1017 ams1018 ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1025 ams1026 ams1027 ams1028 ams1029 ams1030 ams1032 ams1033 ams1034 ams1035 ams1037 ams1038 ams1039 ams1040 ams1041)
foreach cond (ex rest)
echo ${subj}.${cond}

cd ${fulloutdir}/sub-${subj}/ses-${cond}/
3dresample -input ${fulloutdir}/sub-${subj}/${subj}_thresh_fstat_1.3_20.nii.gz -master bilat_MNI.nii.gz -prefix ${fulloutdir}/sub-${subj}/${subj}_thresh_fstat_1.3_20_RS.nii.gz -overwrite

fslmaths bilat_MNI.nii.gz -thr .9 -uthr 1.1 -bin CA1toMNI.nii.gz
ImageMath 3 CA1toMNI_dil.nii.gz MD CA1toMNI.nii.gz 1

3dcalc -a CA1toMNI_dil.nii.gz -b ${fulloutdir}/sub-${subj}/${subj}_thresh_fstat_1.3_20_RS.nii.gz -prefix combinedCA1_dil.nii.gz -expr 'a*b'
3dcalc -a CA1toMNI.nii.gz -b ${fulloutdir}/sub-${subj}/${subj}_thresh_fstat_1.3_20_RS.nii.gz -prefix combinedCA1.nii.gz -expr 'a*b'


fslmaths bilat_MNI.nii.gz -thr 2.9 -uthr 4.1 -bin DGCA3toMNI.nii.gz
ImageMath 3 DGCA3toMNI_dil.nii.gz MD DGCA3toMNI.nii.gz 1

3dcalc -a DGCA3toMNI_dil.nii.gz -b ${fulloutdir}/sub-${subj}/${subj}_thresh_fstat_1.3_20_RS.nii.gz -prefix combinedDGCA3_dil.nii.gz -expr 'a*b'
3dcalc -a DGCA3toMNI.nii.gz -b ${fulloutdir}/sub-${subj}/${subj}_thresh_fstat_1.3_20_RS.nii.gz -prefix combinedDGCA3.nii.gz -expr 'a*b'


fslmaths bilat_MNI.nii.gz -thr 7.9 -uthr 8.1 -bin SUBtoMNI.nii.gz
ImageMath 3 SUBtoMNI_dil.nii.gz MD SUBtoMNI.nii.gz 1

3dcalc -a SUBtoMNI_dil.nii.gz -b ${fulloutdir}/sub-${subj}/${subj}_thresh_fstat_1.3_20_RS.nii.gz -prefix combinedSUB_dil.nii.gz -expr 'a*b'
3dcalc -a SUBtoMNI.nii.gz -b ${fulloutdir}/sub-${subj}/${subj}_thresh_fstat_1.3_20_RS.nii.gz -prefix combinedSUB.nii.gz -expr 'a*b'

fslmaths bilat_MNI.nii.gz -thr 9.9 -uthr 10.1 -bin ERCtoMNI.nii.gz
ImageMath 3 ERCtoMNI_dil.nii.gz MD ERCtoMNI.nii.gz 1

3dcalc -a ERCtoMNI_dil.nii.gz -b ${fulloutdir}/sub-${subj}/${subj}_thresh_fstat_1.3_20_RS.nii.gz -prefix combinedERC_dil.nii.gz -expr 'a*b'
3dcalc -a ERCtoMNI.nii.gz -b ${fulloutdir}/sub-${subj}/${subj}_thresh_fstat_1.3_20_RS.nii.gz -prefix combinedERC.nii.gz -expr 'a*b'

fslmaths bilat_MNI.nii.gz -thr 10.9 -uthr 12.1 -bin PERtoMNI.nii.gz
ImageMath 3 PERtoMNI_dil.nii.gz MD PERtoMNI.nii.gz 1

3dcalc -a PERtoMNI_dil.nii.gz -b ${fulloutdir}/sub-${subj}/${subj}_thresh_fstat_1.3_20_RS.nii.gz -prefix combinedPER_dil.nii.gz -expr 'a*b'
3dcalc -a PERtoMNI.nii.gz -b ${fulloutdir}/sub-${subj}/${subj}_thresh_fstat_1.3_20_RS.nii.gz -prefix combinedPER.nii.gz -expr 'a*b'

fslmaths bilat_MNI.nii.gz -thr 12.9 -uthr 13.1 -bin PHCtoMNI.nii.gz
ImageMath 3 PHCtoMNI_dil.nii.gz MD PHCtoMNI.nii.gz 1

3dcalc -a PHCtoMNI_dil.nii.gz -b ${fulloutdir}/sub-${subj}/${subj}_thresh_fstat_1.3_20_RS.nii.gz -prefix combinedPHC_dil.nii.gz -expr 'a*b'
3dcalc -a PHCtoMNI.nii.gz -b ${fulloutdir}/sub-${subj}/${subj}_thresh_fstat_1.3_20_RS.nii.gz -prefix combinedPHC.nii.gz -expr 'a*b'


end
end
