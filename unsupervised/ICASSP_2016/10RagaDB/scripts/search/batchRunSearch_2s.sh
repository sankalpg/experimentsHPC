#!/bin/bash

#reading all the files in the specified location

files=()
while read -r -d $'\0'; do
    files+=("$REPLY")
done < <(find $1 -iname "*.pitchSilIntrpPP" -print0)


#for (( i = 0 ; i  < ${#files[@]}; i++ ))
#do
#        echo  ${files[$i]%.*}
#done

#$ -N MotifSearch
#$ -q default.q
#$ -cwd
#$ -t 1-140:1

./searchPatterns_O3 "${files[${SGE_TASK_ID}-1]%.*}" "procParamsSearch_2s.txt" "fileExtensionsSearch_2s.txt" 20 -1 1

