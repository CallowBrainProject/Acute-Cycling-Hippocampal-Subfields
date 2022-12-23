#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Apr 25 14:36:12 2019

@author: stark


Loads an fmriprep confounds file and computes a 'censor' vector for use
in AFNI's 3dDeconvolve/3dREMLfit

create_fmriprep_censor.py confoundsfile [threshold=0.5] [nbefore=1] [nafter=1]

"""

import sys
import pandas as pd
import numpy as np


threshold = 0.5
nbefore = 1
nafter = 1

if len(sys.argv) < 2:
    print('You must provide a confounds file to process')
    print('create_fmriprep_censor.py confoundsfile [threshold=0.5] [nbefore=1] [nafter=1]')
    sys.exit()

confounds_file=sys.argv[1]
if len(sys.argv) >= 3:
    threshold=np.clip(float(sys.argv[2]), 0.01, 5.0)
if len(sys.argv) >= 4:
    nbefore = np.clip(int(sys.argv[3]),0,5)
if len(sys.argv) >= 5:
    nafter = np.clip(int(sys.argv[4]),0,5)

print(confounds_file)
print('Using FD threshold={0:.2f}, censoring that TR and {1} before and {2} after'.format(
        threshold,nbefore,nafter))

confounds=pd.read_csv(confounds_file,delim_whitespace=True)
print(confounds)
base_indices=np.array(confounds.index[confounds.framewise_displacement > threshold])
#base_indices=np.array(confounds.index[confounds.FramewiseDisplacement > threshold])
offsets=np.arange(-1*nbefore,nafter+1)
print('Bad TRs found at {0}'.format(base_indices))
full_indices=np.array([],dtype=int)
for offset in offsets:
    full_indices=np.append(full_indices,offset+base_indices)
full_indices=np.unique(full_indices.clip(0,confounds.shape[0]-1))
goodvec=np.ones(confounds.shape[0],dtype=int)
goodvec[full_indices]=0

np.savetxt('fmriprep_censor.1D',goodvec,fmt='%d')
