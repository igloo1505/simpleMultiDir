#Hey everybody. I put this together when going through the pre-work. I figured if every week we have to create a bunch of different modules something like this would be useful.
#However be aware, I wrote this on a mac, although most of it should work on a windows... I think... Once git bash is installed. Everything except the line at the bottom that is purely Apple specific. Delete that if you're on a windows machine, or put a pound sign in front of it.



#! /bin/bash

# this determines where to put the file. Adjust it if you like by adding a /folderWhereYouKeepYourWork, or move it after it's created
cd ~/Desktop
clear

# This asks for input, and sets the response to the name of the main directory
echo que pasa homes, what\'s the name of the main folder?
read newDir
mkdir "$newDir"


# changes directory to the one just created, and loops through until it reaches the number set to max and appends that number to the end of the sub-directory name. This section can be easily changed to reflect a very simple starting file structure by adding touch index.html style.css and script.js and so on
cd $newDir

clear
echo How many Sub Directories?

read max
n=1
while [ "$n" -le "$max" ]; do
mkdir "module$n"
n=`expr "$n" + 1`;
done
clear
echo Would you like to make a simple file structure in module1? y/n
read res

if [ "$res" == y ]
then
	cd module1
	touch index.html
	touch style.css
	touch script.js
	clear
else
	echo No worries. Have a great day\!
	clear
fi

echo Thank you! Press command+q to quit 

#Wait 3 so you can see my very polite good bye message
sleep 3

# THIS IS MAC SPECIFIC, if you are using this on a windows through gitbash, it is important to comment this out
osascript -e 'tell application "Terminal" to close (every window whose name contains ".command")' &
exit

