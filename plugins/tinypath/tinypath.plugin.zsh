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
		## dirk=${dirk/.+/.}
		if [[ $dirk[1] == "." ]]; then
		    dirp=$dirk
		    dirp=${dirk:0:2}
		else
		    dirp=$dirk[1]
		fi
		tpath=$tpath"/"$dirp				    
	    done	
	    echo $tpath"/"	  
	fi		       
     fi 
}
