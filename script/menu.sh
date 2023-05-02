#!/bin/bash

while true
do
  #Menu for the lists
  echo "* Bash Commands *"
  echo "1. List files"
  echo "2. Show free disk space"
  echo "3. Show system path"
  echo "4. Display command history"
  echo "5. Backup files"
  echo "6. Exit"
  read user

  #Cases to read user input for the menu to work
  case $user in

    1)
      ls;;

    2)
      df -h;;

    3)
      pwd;;

    4)
      history;;

    #Gets name of the directory to backup before putting in BackupFolder and showing the contents of the new directory
    5) 
      echo "Please enter name of directory to backup:"
      read dir_name
      mkdir BackupFolder
      cp -R $dir_name BackupFolder
      echo "Showing contents of folder"
      ls -a BackupFolder;;

    6)
       exit 0;;

    *)
      echo "Uhoh, that was not an option :( Try again";;

  esac

done