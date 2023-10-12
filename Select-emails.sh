#!/usr/bin/env bash
#select emails from file
awk '{print $2}' students-list_0923.txt >> student-emails.txt
