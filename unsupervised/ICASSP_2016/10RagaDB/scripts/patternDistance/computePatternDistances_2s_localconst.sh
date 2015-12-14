#!/bin/bash

#reading all the files in the specified location

files=()
while read -r -d $'\0'; do
    files+=("$REPLY")
done < <(find $1 -iname "*.mp3" -print0)


#for (( i = 0 ; i  < ${#files[@]}; i++ ))
#do
#        echo  ${files[$i]%.*}
#done

#$ -N patternDistance
#$ -q default.q
#$ -cwd
#$ -t 1-140:1
./patternDistancesFixedDuration_O3_localconst "${files[${SGE_TASK_ID}-1]%.*}" procParamsPatternDIST_2s.txt fileExtensionsPatternDIST_2s_localconst.txt 5000000 1
 
