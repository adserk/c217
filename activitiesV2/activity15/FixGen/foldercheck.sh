#!/bin/bash

#CHECK if folder already exist before creating a new folder
folders=()

#Extract an array of folder names from the current directory
for i in */
do
        folders+=($i)
done

foldername="logs"
#If folder exists output an error
#If folder doesn't create a new file
if [[ ! "${folders[*]}" =~ "$foldername" ]]
then
        echo "Folder doesn't exist. Creating folder '$foldernamei'"
        mkdir $foldername 
else
        echo "Folder $foldername already exist"
fi
