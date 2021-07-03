#!/bin/bash

folders='Compressed Documents Images Music Programs Videos'
ext_comp="*.zip *.tar.gz"
ext_doc="*.htm* *.php *.txt *.css *.doc* *.pdf *.PDF *.ppt* *.js"
ext_img="*.jp*g *.JPG *.png *.gif"
ext_music="*.mp3 *.aac *.wma"
ext_progrm="*.deb *.exe *.run"
ext_vid="*.mp4 *.mkv *.flv *.avi *.webm *.wmv"

for folder in $folders
do
	if [ $folder == 'Compressed' ]
	then
		mkdir -p $folder
		mv $ext_comp $folder 2>/dev/null

	elif [ $folder == 'Documents' ]
	then
		mkdir -p $folder
		mv $ext_doc $folder 2>/dev/null

	elif [ $folder == 'Images' ]
	then
		mkdir -p $folder
		mv $ext_img $folder 2>/dev/null

	elif [ $folder == 'Music' ]
	then
		mkdir -p $folder
		mv $ext_music $folder 2>/dev/null

	elif [ $folder == 'Programs' ]
	then
		mkdir -p $folder
		mv $ext_progrm $folder 2>/dev/null

	elif [ $folder == 'Videos' ]
	then
		mkdir -p $folder
		mv $ext_vid $folder 2>/dev/null

	else
		echo "$(tput setaf 3)Problem creating folder..$(tput sgr0)"
	fi

done

echo "$(tput setaf 2)Successfully organized..$(tput sgr0)"