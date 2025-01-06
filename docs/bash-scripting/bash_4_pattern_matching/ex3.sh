#!/bin/bash


# Explanation:
# Parameter Check: The script checks if a filename is provided; if not, it displays usage instructions and exits.
# User Input: It prompts the user to enter a string.
# Appending to the File: The entered string is appended to the specified file using the >> operator.
# Confirmation: After appending, it confirms that the action was successful.


# Check if a filename is provided
if [ $# -ne 1 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename="$1"

# Here's a simple Bash script that takes a filename as a parameter, prompts the user for a string, and appends that string to the end of the file:
# Prompt the user for a string
read -p "Enter the string to append to the file '$filename': " user_string

# Append the string to the file
echo "$user_string" >> "$filename"

# Confirm the action
echo "The string has been appended to '$filename'."

exit 0


