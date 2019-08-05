#!/bin/bash

if (whiptail --title "X410" --yesno "Would you like to view a link to X410 (recommended) on the Microsoft Store?" 8 80) then
	echo "Running $ wslview <link>"
	wslview https://afflnk.microsoft.com/c/1291904/433017/7593?u=https%3A%2F%2Fwww.microsoft.com%2Fen-us%2Fp%2Fx410%2F9nlp712zmn9q%23activetab%3Dpivot%3Aoverviewtab
else
	echo "Skipping X410"
fi
