#!/bin/bash

#reading all the files in the specified location

files=()
while read -r -d $'\0'; do
    files+=("$REPLY")
done < <(find $1 -iname "*.allPatt_3s" -print0)
 

#$ -N patternKNN
#$ -q default.q
#$ -cwd
#$ -t 1-140:1
./patternKNNFixedDuration_O3 ${files[${SGE_TASK_ID}-1]%.*} procParamsPatternKNN_3s.txt fileExtensionsPatternKNN_3s.txt 1 1 


