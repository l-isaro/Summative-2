#!/usr/bin/env bash
#this script selects emails
awk '{print $1}' students-list_0923.txt > student-emails.txt


