#/bin/bash

# Here's the first line of code to write to do the first homework assignment.
#
# In /scratch2/scratchdirs/nugent/astro250/hwk1 we have a set of fits files as well as catalogs
# from these fits files. They are named the same save for the suffix (.fits or .cat). 
# Some of the .cat files are missing. Write a bash shell script which takes as input 
# the directory name and prints out the names of the .fits files which are missing their 
# corresponding .cat files. If the directory does not exist, the code should print
# out an error statement accordingly.
#

dir=$1 
if [ -d "$dir" ]; then
	cd $dir
	catlist=('*.cat') #list of cat files
    fitslist=('*.fits') #list of fits file
    fits_arr=${fitslist[*]}
    for file in $fits_arr
    	do 
    		FNAME=(${file%.*})
    		if [ -f "$FNAME.cat" ]; then
    			:
    		else 
    			echo "Missing File: $FNAME.cat"
    		fi
    	done
cd ..
fi
if [ ! -d "$dir" ]; then
	echo "Directory  $dir does not exist... "
fi






