#!/bin/bash

#reading all the files in the specified location

files=()
while read -r -d $'\0'; do
    files+=("$REPLY")
done < <(find $1 -iname "*.pitch" -print0)


#for (( i = 0 ; i  < ${#files[@]}; i++ ))
#do
#        echo  ${files[$i]%.*}
#done

#$ -N Motif
#$ -q default.q
#$ -cwd
#$ -t 1-953:1
./SearchInterDTW_O3 "${files[${SGE_TASK_ID}-1]%.*}" '.pitch' '.tonic' '.tablaSec' '.flist' '.2s25Motif_CONF1' '.2s25MotifSearch_CONF1' '.2s25SearchMapp_CONF1' '.2s25SearchProcLog_CONF1' '.2s25SearchParams_CONF1' 2.0 50 2.0 -1 5 25 5 -1

