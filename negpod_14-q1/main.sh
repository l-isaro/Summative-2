#!/usr/bin/env bash
#This script reads user input and performs different tasks
while true
do
    read -r -p "Enter the option for ewhat task you want to perform(enter for entering records, view for viewing records, delete for deleting record update for updating records and exit for exiting the application)" option
    echo "$option"
      if [[ $option == "enter" ]]
      then
	   read -p "enter your email, age and STUDENTID" email age STUDENTID
	   echo "$name $email $age $STUDENTID" >> students-list_0923.txt
	   echo "Record added successfully"
      elif [[ $option == "view" ]]
      then
	   cat students-list_0923.txt
      elif [[ $option == "delete" ]]
      then
	   read -p "enter the STUDENTID" temp_id
	   sed -i "/$temp_id/d" students-list_0923.txt
	   echo "Record deleted successfully"
      elif [[ $option == "update" ]]
      then
	   read -p "enter the STUDENTID of the student who's information you want to update" update_id
	   read -p "enter the updated email and age " updated_email updated_age
           sed -i "s/ $update_id / $updated_email $updated_age /" students-list_0923.txt
	   echo "Record updated successfully"
      elif [[ $option == "exit" ]]
      then
	   exit 0
      else
	  echo "Invalid input"
      fi
done	   

