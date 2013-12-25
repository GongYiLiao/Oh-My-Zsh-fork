#!/usr/bin/zsh 

function tinypath() {
    if [[ $PWD != $HOME ]]; then
	pathnow=${PWD/$HOME/\~}
	pathnow=(${(s:/:)pathnow})
	pathdepth=${#pathnow}
	## echo $pathdepth
	if [[ $pathdepth > 2 ]]; then 
	    if [[ $pathnow[1] == "~" ]]; then
		pathlim=$((pathdepth - 3))
		tpath="~"
		startdir=1
	    else
		pathlim=$((pathdepth - 2))
		tpath=""
		startdir=0
	    fi
	    for dirk in ${pathnow[@]:$startdir:$pathlim}; do
		    tpath=$tpath"/"$dirk[1]
	    done	
	    echo $tpath"/"	  
	fi		       
     fi 
}
