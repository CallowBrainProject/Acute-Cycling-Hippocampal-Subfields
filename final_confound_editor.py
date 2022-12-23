import pandas as pd
import os



#"1001", "1003","1004","1005","1006","1007","1008","1009","1010","1011","1012","1013","1014","1015","1016","1017"
#"ex","rest"
Subjects=("1001","1002","1003","1004","1005","1006","1007","1008","1009","1010","1011","1012","1013","1014","1015","1016","1017","1018","1019","1020","1021","1022","1023","1024","1025","1026","1027","1028","1029","1030","1032","1033","1034","1035","1037","1038","1039","1040","1041")
Conditions=("ex","rest")
for subj in (Subjects):
    for cond in (Conditions):
        os.chdir("/Volumes/MRI_BACKUP/test/fmriprep/sub-ams"+subj+"/ses-"+cond+"/func/")
        # Currently inputting name of text file but will have it loop through names of files once everything is set up
        fname='sub-ams'+subj+'_ses-'+cond+'_task-MST1_run-1_desc-confounds_timeseries.tsv'
        print(fname)
        fname_final=fname[:-4]

        # Read text stim files
        test_data=pd.read_csv(fname,sep='\t')
        print(test_data)
        Stim_file=test_data[['global_signal','csf','white_matter','framewise_displacement','a_comp_cor_00','a_comp_cor_01','rot_x','rot_y','rot_z','trans_x','trans_y','trans_z']]
        print(Stim_file)

        Stim_file.to_csv('final_confounds'+fname_final+'.tsv', sep='\t', header=True, index=False)


        fname='sub-ams'+subj+'_ses-'+cond+'_task-MST2_run-1_desc-confounds_timeseries.tsv'
        print(fname)
        fname_final=fname[:-4]

        # Read text stim files
        test_data=pd.read_csv(fname,sep='\t')
        print(test_data)
        Stim_file=test_data[['global_signal','csf','white_matter','framewise_displacement','a_comp_cor_00','a_comp_cor_01','rot_x','rot_y','rot_z','trans_x','trans_y','trans_z']]
        print(Stim_file)

        Stim_file.to_csv('final_confounds'+fname_final+'.tsv', sep='\t', header=False, index=False)
