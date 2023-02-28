#!/bin/tcsh -f

setenv diffdir /Volumes/MRI_BACKUP/test/Diffusion/
setenv bidsdir /Volumes/MRI_BACKUP/test/fmriprep/
setenv ashsdir /Volumes/MRI_BACKUP/test/Diffusion/ASHS
#set echo
# ams1001 ams1002 ams1003 ams1004 ams1005 ams1006 ams1007 ams1008 ams1009 ams1010 ams1011 ams1012 ams1013 ams1014 ams1015 ams1016 ams1017 ams1018 ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1025 ams1026 ams1027 ams1028 ams1029 ams1030 ams1032 ams1033 ams1034 ams1035 ams1037 ams1038 ams1039 ams1040 ams1041
foreach subj (ams1002 ams1011 ams1012 ams1013 ams1014 ams1015 ams1016 ams1017 ams1018 ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1025 ams1026 ams1027 ams1028 ams1029 ams1030 ams1031 ams1032 ams1033 ams1034 ams1035 ams1037 ams1038 ams1039 ams1040 ams1041)
#fslmaths ${diffdir}/sub-${subj}/ses-rest/GM_template.nii.gz -mul ${diffdir}/sub-${subj}/ses-ex/GM_template.nii.gz ${diffdir}/sub-${subj}/GM_combined_template.nii.gz
#fslmaths ${diffdir}/sub-${subj}/ses-rest/DGCA3toTemplate_thresh.nii.gz -mul ${diffdir}/sub-${subj}/ses-ex/DGCA3toTemplate_thresh.nii.gz ${diffdir}/sub-${subj}/DGCA3_combined_toTemplate.nii.gz
#fslmaths ${diffdir}/sub-${subj}/ses-rest/CA1toTemplate_thresh.nii.gz -mul ${diffdir}/sub-${subj}/ses-ex/CA1toTemplate_thresh.nii.gz ${diffdir}/sub-${subj}/CA1_combined_toTemplate.nii.gz
#fslmaths ${diffdir}/sub-${subj}/ses-rest/SUBtoTemplate_thresh.nii.gz -mul ${diffdir}/sub-${subj}/ses-ex/SUBtoTemplate_thresh.nii.gz ${diffdir}/sub-${subj}/SUB_combined_toTemplate.nii.gz
#fslmaths ${diffdir}/sub-${subj}/ses-rest/whole_hipp_template_thresh.nii.gz -mul ${diffdir}/sub-${subj}/ses-ex/whole_hipp_template_thresh.nii.gz ${diffdir}/sub-${subj}/whole_hipp_combined_toTemplate.nii.gz

foreach cond (ex rest)
echo ${subj}.${cond}

cd ${diffdir}/sub-${subj}/ses-${cond}

#/Applications/c3d/bin/c3d_affine_tool  ${ashsdir}/sub-${subj}/ses-${cond}/flirt_t2_to_t1/flirt_t2_to_t1.mat -inv -oitk t2_to_t1.mat
#antsApplyTransforms -d 3 -n MultiLabel -i bilat_subfield.nii.gz -r T1.nii.gz -t "[t2_to_t1.mat]" -o bilat2T1.nii.gz

# bilat 2 Template
#antsApplyTransforms -d 3 -n MultiLabel -i bilat_subfield.nii.gz  -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_desc-preproc_T1w.nii.gz -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1_from-orig_to-T1w_mode-image_xfm.txt]" -t "[t2_to_t1.mat]" -o bilat_template.nii.gz
#antsApplyTransforms -d 3 -n MultiLabel -i bilat_subfield.nii.gz  -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_desc-preproc_T1w.nii.gz -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1norm_from-orig_to-T1w_mode-image_xfm.txt]" -t "[t2_to_t1.mat]" -o bilat_template.nii.gz
#antsApplyTransforms -d 3 -n MultiLabel -i bilat_subfield.nii.gz  -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_acq-1norm_desc-preproc_T1w.nii.gz -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1norm_from-orig_to-T1w_mode-image_xfm.txt]" -t "[t2_to_t1.mat]" -o bilat_template.nii.gz

#fslmaths bilat_template.nii.gz -thr .9 -uthr 1.1 -bin CA1toTemplate.nii.gz
#fslmaths bilat_template.nii.gz -thr 2.9 -uthr 4.1 -bin DGCA3toTemplate.nii.gz
#fslmaths bilat_template.nii.gz -thr 7.9 -uthr 8.1 -bin SUBtoTemplate.nii.gz
#fslmaths CA1toTemplate.nii.gz -add DGCA3toTemplate.nii.gz -add SUBtoTemplate.nii.gz -bin whole_hipp_template.nii.gz


# GM 2 Template
#antsApplyTransforms -d 3 -n MultiLabel -i GM_T1_mask.nii.gz  -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_desc-preproc_T1w.nii.gz -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1_from-orig_to-T1w_mode-image_xfm.txt]" -o GM_template.nii.gz
#antsApplyTransforms -d 3 -n MultiLabel -i GM_T1_mask.nii.gz  -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_desc-preproc_T1w.nii.gz -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1norm_from-orig_to-T1w_mode-image_xfm.txt]" -o GM_template.nii.gz
#antsApplyTransforms -d 3 -n MultiLabel -i GM_T1_mask.nii.gz  -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_acq-1norm_desc-preproc_T1w.nii.gz -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1norm_from-orig_to-T1w_mode-image_xfm.txt]" -o GM_template.nii.gz

# T1 2 Template
#antsApplyTransforms -d 3 -n MultiLabel -i T1.nii.gz  -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_desc-preproc_T1w.nii.gz -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1_from-orig_to-T1w_mode-image_xfm.txt]" -o T1_template.nii.gz
#antsApplyTransforms -d 3 -n MultiLabel -i T1.nii.gz  -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_desc-preproc_T1w.nii.gz -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1norm_from-orig_to-T1w_mode-image_xfm.txt]" -o T1_template.nii.gz
#antsApplyTransforms -d 3 -n MultiLabel -i T1.nii.gz  -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_acq-1norm_desc-preproc_T1w.nii.gz -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1norm_from-orig_to-T1w_mode-image_xfm.txt]" -o T1_template.nii.gz

# Diffusion 2 Template

#antsApplyTransforms -d 3 -e 3 -i ${diffdir}/sub-${subj}/ses-${cond}/AMICO/NODDI/FIT_ICVF.nii.gz -n BSpline -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_desc-preproc_T1w.nii.gz -o NDItoTemplate.nii.gz -t b0toT11Warp.nii.gz -t b0toT10GenericAffine.mat -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1_from-orig_to-T1w_mode-image_xfm.txt]" --float
#antsApplyTransforms -d 3 -e 3 -i ${diffdir}/sub-${subj}/ses-${cond}/AMICO/NODDI/FIT_ICVF.nii.gz -n BSpline -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_desc-preproc_T1w.nii.gz -o NDItoTemplate.nii.gz -t b0toT11Warp.nii.gz -t b0toT10GenericAffine.mat -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1norm_from-orig_to-T1w_mode-image_xfm.txt]" --float
#antsApplyTransforms -d 3 -e 3 -i ${diffdir}/sub-${subj}/ses-${cond}/AMICO/NODDI/FIT_ICVF.nii.gz -n BSpline -r -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_acq-1norm_desc-preproc_T1w.nii.gz -o NDItoTemplate.nii.gz -t b0toT11Warp.nii.gz -t b0toT10GenericAffine.mat -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1norm_from-orig_to-T1w_mode-image_xfm.txt]" --float

#antsApplyTransforms -d 3 -e 3 -i ${diffdir}/sub-${subj}/ses-${cond}/AMICO/NODDI/FIT_ISOVF.nii.gz -n BSpline -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_desc-preproc_T1w.nii.gz -o ISOtoTemplate.nii.gz -t b0toT11Warp.nii.gz -t b0toT10GenericAffine.mat -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1_from-orig_to-T1w_mode-image_xfm.txt]" --float
#antsApplyTransforms -d 3 -e 3 -i ${diffdir}/sub-${subj}/ses-${cond}/AMICO/NODDI/FIT_ISOVF.nii.gz -n BSpline -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_desc-preproc_T1w.nii.gz -o ISOtoTemplate.nii.gz -t b0toT11Warp.nii.gz -t b0toT10GenericAffine.mat -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1norm_from-orig_to-T1w_mode-image_xfm.txt]" --float
#antsApplyTransforms -d 3 -e 3 -i ${diffdir}/sub-${subj}/ses-${cond}/AMICO/NODDI/FIT_ISOVF.nii.gz -n BSpline -r -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_acq-1norm_desc-preproc_T1w.nii.gz -o ISOtoTemplate.nii.gz -t b0toT11Warp.nii.gz -t b0toT10GenericAffine.mat -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1norm_from-orig_to-T1w_mode-image_xfm.txt]" --float

#antsApplyTransforms -d 3 -e 3 -i ${diffdir}/sub-${subj}/ses-${cond}/AMICO/NODDI/FIT_OD.nii.gz -n BSpline -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_desc-preproc_T1w.nii.gz -o ODItoTemplate.nii.gz -t b0toT11Warp.nii.gz -t b0toT10GenericAffine.mat -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1_from-orig_to-T1w_mode-image_xfm.txt]" --float
#antsApplyTransforms -d 3 -e 3 -i ${diffdir}/sub-${subj}/ses-${cond}/AMICO/NODDI/FIT_OD.nii.gz -n BSpline -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_desc-preproc_T1w.nii.gz -o ODItoTemplate.nii.gz -t b0toT11Warp.nii.gz -t b0toT10GenericAffine.mat -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1norm_from-orig_to-T1w_mode-image_xfm.txt]" --float
#antsApplyTransforms -d 3 -e 3 -i ${diffdir}/sub-${subj}/ses-${cond}/AMICO/NODDI/FIT_OD.nii.gz -n BSpline -r -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_acq-1norm_desc-preproc_T1w.nii.gz -o ODItoTemplate.nii.gz -t b0toT11Warp.nii.gz -t b0toT10GenericAffine.mat -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1norm_from-orig_to-T1w_mode-image_xfm.txt]" --float

#antsApplyTransforms -d 3 -e 3 -i ${diffdir}/sub-${subj}/ses-${cond}/FA.nii.gz -n BSpline -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_desc-preproc_T1w.nii.gz -o FAtoTemplate.nii.gz -t b0toT11Warp.nii.gz -t b0toT10GenericAffine.mat -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1_from-orig_to-T1w_mode-image_xfm.txt]" --float
#antsApplyTransforms -d 3 -e 3 -i ${diffdir}/sub-${subj}/ses-${cond}/FA.nii.gz -n BSpline -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_desc-preproc_T1w.nii.gz -o FAtoTemplate.nii.gz -t b0toT11Warp.nii.gz -t b0toT10GenericAffine.mat -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1norm_from-orig_to-T1w_mode-image_xfm.txt]" --float
#antsApplyTransforms -d 3 -e 3 -i ${diffdir}/sub-${subj}/ses-${cond}/FA.nii.gz -n BSpline -r -r /Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/anat/sub-${subj}_acq-1norm_desc-preproc_T1w.nii.gz -o FAtoTemplate.nii.gz -t b0toT11Warp.nii.gz -t b0toT10GenericAffine.mat -t "[/Volumes/MRI_BACKUP/test/fmriprep/sub-${subj}/ses-${cond}/anat/sub-${subj}_ses-${cond}_acq-1norm_from-orig_to-T1w_mode-image_xfm.txt]" --float

# Threshold template ROI's to just GM

#fslmaths CA1toTemplate.nii.gz -mul GM_template.nii.gz CA1toTemplate_thresh.nii.gz
#fslmaths DGCA3toTemplate.nii.gz -mul GM_template.nii.gz DGCA3toTemplate_thresh.nii.gz
#fslmaths SUBtoTemplate.nii.gz -mul GM_template.nii.gz SUBtoTemplate_thresh.nii.gz
#fslmaths whole_hipp_template.nii.gz -mul GM_template.nii.gz whole_hipp_template_thresh.nii.gz

end
end

echo SUB
echo ${subj} SUB ISO thresh
foreach subj (ams1002 ams1011 ams1012 ams1013 ams1014 ams1015 ams1016 ams1017 ams1018 ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1025 ams1026 ams1027 ams1028 ams1029 ams1030 ams1031 ams1032 ams1033 ams1034 ams1035 ams1037 ams1038 ams1039 ams1040 ams1041)

foreach cond (ex rest)

cd /Volumes/MRI_BACKUP/test/Diffusion/sub-${subj}/ses-${cond}/



end
end

# Extract values after above subfields and images warped into template space

echo ISO
echo ${subj} CA1 ISO thresh
foreach subj (ams1002 ams1011 ams1012 ams1013 ams1014 ams1015 ams1016 ams1017 ams1018 ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1025 ams1026 ams1027 ams1028 ams1029 ams1030 ams1031 ams1032 ams1033 ams1034 ams1035 ams1037 ams1038 ams1039 ams1040 ams1041)

foreach cond (ex rest)

cd /Volumes/MRI_BACKUP/test/Diffusion/sub-${subj}/ses-${cond}/

#fslstats ISOtoTemplate.nii.gz -k SUBtoTemplate_thresh.nii.gz -M
#fslstats ISOtoTemplate.nii.gz -k DGCA3toMNI.nii.gz -M
fslstats ISOtoTemplate.nii.gz -k ${diffdir}/sub-${subj}/ses-${cond}/GM_template.nii.gz -M


end
end

echo NDI
echo ${subj} DG NDI thresh
foreach subj (ams1002 ams1011 ams1012 ams1013 ams1014 ams1015 ams1016 ams1017 ams1018 ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1025 ams1026 ams1027 ams1028 ams1029 ams1030 ams1031 ams1032 ams1033 ams1034 ams1035 ams1037 ams1038 ams1039 ams1040 ams1041)

foreach cond (ex rest)

cd /Volumes/MRI_BACKUP/test/Diffusion/sub-${subj}/ses-${cond}/

#fslstats NDItoTemplate.nii.gz -k SUBtoTemplate_thresh.nii.gz -M
#fslstats NDItoMNI.nii.gz -k DGCA3toMNI.nii.gz -M
fslstats NDItoTemplate.nii.gz -k ${diffdir}/sub-${subj}/ses-${cond}/GM_template.nii.gz -M
end
end

echo ODI
echo ${subj} DG ODI thresh
foreach subj (ams1002 ams1011 ams1012 ams1013 ams1014 ams1015 ams1016 ams1017 ams1018 ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1025 ams1026 ams1027 ams1028 ams1029 ams1030 ams1031 ams1032 ams1033 ams1034 ams1035 ams1037 ams1038 ams1039 ams1040 ams1041)

foreach cond (ex rest)

cd /Volumes/MRI_BACKUP/test/Diffusion/sub-${subj}/ses-${cond}/

#fslstats ODItoTemplate.nii.gz -k SUBtoTemplate_thresh.nii.gz -M
#fslstats ODItoMNI.nii.gz -k DGCA3toMNI.nii.gz -M
fslstats ODItoTemplate.nii.gz -k ${diffdir}/sub-${subj}/ses-${cond}/GM_template.nii.gz -M
end
end

echo FA
echo ${subj} DG FA thresh
foreach subj (ams1002 ams1011 ams1012 ams1013 ams1014 ams1015 ams1016 ams1017 ams1018 ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1025 ams1026 ams1027 ams1028 ams1029 ams1030 ams1031 ams1032 ams1033 ams1034 ams1035 ams1037 ams1038 ams1039 ams1040 ams1041)

foreach cond (ex rest)

cd /Volumes/MRI_BACKUP/test/Diffusion/sub-${subj}/ses-${cond}/

#fslstats FAtoTemplate.nii.gz -k CA1toTemplate_thresh.nii.gz -M
#fslstats FAtoMNI.nii.gz -k DGCA3toMNI.nii.gz -M
#fslstats FAtoTemplate.nii.gz -k GM_template.nii.gz -M
end
end

echo MD
echo ${subj} DG MD thresh
foreach subj (ams1002 ams1011 ams1012 ams1013 ams1014 ams1015 ams1016 ams1017 ams1018 ams1019 ams1020 ams1021 ams1022 ams1023 ams1024 ams1025 ams1026 ams1027 ams1028 ams1029 ams1030 ams1031 ams1032 ams1033 ams1034 ams1035 ams1037 ams1038 ams1039 ams1040 ams1041)

foreach cond (ex rest)

cd /Volumes/MRI_BACKUP/test/Diffusion/sub-${subj}/ses-${cond}/

#fslstats MDtoTemplate.nii.gz -k whole_hipp_template_thresh.nii.gz -M
#fslstats MDtoMNI.nii.gz -k DGCA3toMNI.nii.gz -M
#fslstats MDtoTemplate.nii.gz -k GM_template.nii.gz -M
end
end
