#!/bin/bash 

IFS=" "

while read linha; do
	read -a a <<< "${linha}"
	
	
	if [[ "${#a[*]}" -eq 3 ]]; then
		echo "${a[0]} ${a[1]:0:1}. ${a[2]}"
	fi
	
	if [[ "${#a[*]}" -eq 4 ]]; then
		echo "${a[0]} ${a[1]:0:1}. ${a[2]:0:1}. ${a[3]}"
	fi

	if [[ "${#a[*]}" -eq 5 ]]; then
		echo "${a[0]} ${a[1]:0:1}. ${a[2]:0:1}. ${a[3]:0:1}. ${a[4]}"
	fi
	
	if [[ "${#a[*]}" -eq 6 ]]; then
		echo "${a[0]} ${a[1]:0:1}. ${a[2]:0:1}. ${a[3]:0:1}. ${a[4]:0:1}. ${a[5]}"
	fi
	
done < nomes.txt
