#!/bin/bash

while :
do
clear


echo " Welcome to the phone directory"
echo "1. Add a Contact"
echo "2. Search Contact"
echo "3. Delete contact"
echo "4.View your phone directory"
echo "5. Quit"

read -p "Enter your choice" usr_cmd
clear
case $usr_cmd in
1)echo"Add new contact" 
read -p"Enter name" name
read -p"Enter Number" number
clear
echo "New Contact info:"
echo "-> Name: $name. -> Number: $number."
echo "$name : $number" >>phonedir.log
echo "Saved Sucessfully";;
2)echo "Search contacts"
read -p "Enter contact name to search" search
clear
echo "Contact searched sucessfully"
grep -i $search phonedir.log;;
3)echo "Delete Contact"
read -p "Enter contact name to be deleted." delete_string
sed -i -e "/$delete_string/d" phonedir.log
echo "Contact deleted sucessfully";;
4)echo "Phone Directory"
echo""
cat phonedir.log;;
5)break;;
*)echo "INVALID OPTION";;
esac;

read -p "Press 5 to Quit,Anything else to return to main menu" confirm_exit
if [$confirm_exit -eq 5]
then break
fi
done
