#!/bin/bash

# purpose: An alternative to the getops command in bash
# source: ChatGPT

# REVISE ME

# Explanation:
# Parameter Check: The script checks if exactly one argument (filename) is provided. If not, it displays usage information and exits.
# Menu Display: It presents a list of available editors for the user to choose from.
# User Input: It reads the user's choice and uses a case statement to determine which editor to open the file with.
# Invalid Input Handling: If the user enters an invalid choice, the script will notify them and exit.
# Here’s a Bash script that takes a filename as a parameter, displays a menu of editors, 
# and allows the user to choose one to open the file using a case statement:

# Check if a filename is provided the params are greater than 1
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi
# Assign file to a param
filename="$1"

# Display the menu
echo "Choose an editor to open the file '$filename':"
echo "1) nano"
echo "2) vi"
echo "3) vim"
echo "4) emacs"

# Read the user's choice and set them to an array - params 1to 4
read -p "Enter your choice (1-4): " choice

# Open the file with the selected editor
case $choice in
    1)
        nano "$filename"
        ;;
    2)
        vi "$filename"
        ;;
    3)
        vim "$filename"
        ;;
    4)
        emacs "$filename"
        ;;
    *)
        echo "Invalid choice. Please select a number between 1 and 4."
        exit 1
        ;;
esac

exit 0


