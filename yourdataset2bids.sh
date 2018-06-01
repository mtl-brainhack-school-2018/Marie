#!/bin/bash

original_dataset_directory=${PWD}/dataset_original/
echo ${original_dataset_directory}

new_dataset_directory=${PWD}/dataset_new/
echo ${new_dataset_directory}

for subject in `ls ${original_dataset_directory}`; do
  echo mkdir -p ${new_dataset_directory}sub-${subject}/anat ${new_dataset_directory}sub-${subject}/func
  echo cp ${original_dataset_directory}${subject}/fmri.nii ${new_dataset_directory}sub-${subject}/func/sub-${subject}_task-memory_bold.nii
  echo cp ${original_dataset_directory}${subject}/Ana/sAna.nii ${new_dataset_directory}sub-${subject}/anat/sub-${subject}_T1w.nii
done
