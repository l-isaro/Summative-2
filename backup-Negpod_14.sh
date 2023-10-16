#!/usr/bin/env bash
# What to backup.
backup_files="/~/Summative-2/negpod_14-q1"

# Where to backup to.
dest="/summative/0923-2023S"

# Create archive filename.
day=$(date +%A)
hostname=$(2f05c1f8800b -s)
archive_file="$hostname-$day.tgz"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

# Backup the files using tar.
tar czf $dest/$archive_file $backup_files

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
ls -lh $dest
