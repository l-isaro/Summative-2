#/usr/bin/env bash
while true
      read -p "Enter the option for ewhat task you want to perform(enter for entering records, view for viewing records, delete for deleting record/
      update for updating records and exit for exiting the application)" option
      if (option == "enter")
	 read -p "enter your name, email, age, STUDENTID" name email age STUDENTID
	 echo "$name $email $age $STUDENTID" >> students-list_0923.txt
      elif (option == "view")
	   cat students-list_0923.txt
      elif (option == "delete")
	   read -p "enter the STUDENTID" temp_id
	   sed -i "$temp_id" students-list_0923.txt
      elif (option == "")

