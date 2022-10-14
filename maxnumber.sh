#!/bin/bash
echo -n  "Write numbers: "
read -a num
max_num=${num[0]}
size=${#num[@]}


for ((i = 0; i < size; i++)); do
	  if [[ ${num[i]} -gt $max_num ]]; then
                  max_num=${num[i]}
          fi
done
echo $max_num
