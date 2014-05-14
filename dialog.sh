#!/bin/bash
dialog --title "Check me" --checklist "Pick Numbers" 15 25 3 1 "one" "off" 2 "two" "on" 3 "three" "off"
dialog -clear

dialog --title "Que" --msgbox "Welcome" 9 18

dialog --title "Confirm" --yesno "Are you willing? " 9 18
if [ $? != 0 ]; then
	dialog --infobox "Thank You anyway" 5 20
	sleep 2
	dialog -clear
	exit 0
fi

dialog --title "Ques" --inputbox "Please enter your name" 9 30 2>_1.txt
Q_name=$(cat _1.txt)

dialog --menu "$Q_name, what music you like? " 15 30 4 1 "Classical" 2 "Jazz" 3 "Country" 4 "Other" 2>_1.txt
Q_music=$(cat _1.txt)

if [ "$Q_music" = 1 ]; then
	dialog --title "Likes Classical" --msgbox "Good choice" 12 25
else
	dialog --title "Doesn't Like Classical" --msgbox "Shame" 12 25
fi

sleep 2
dialog -clear
exit 0

