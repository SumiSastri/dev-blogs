#!/bin/bash

# Sources: https://coderpad.io/blog/development/the-complete-guide-to-regular-expressions-regex/
#          https://linuxsimply.com/bash-scripting-tutorial/string/regex/
#          https://www.howtogeek.com/661101/how-to-use-regular-expressions-regexes-on-linux/
# Panopto link:
# purpose: Regex in bash


echo
echo "Test with regex - gotcha the asterisk acts like a wild card and is not a mandatory match"

stringCheck="my string has an aeiou"
# if  [[ $stringCheck =~ [0-9] ]] # contains digits
# if  [[ $stringCheck =~ ^my ]] # starts with my
# if  [[ $stringCheck =~ my$ ]] # ends with my
# if  [[ $stringCheck =~ aeiou$ ]] # ends with aeiou
# if  [[ $stringCheck =~ ^[a-z] ]] # starts with lower case
# if  [[ $stringCheck =~ [A-Z] ]] # has capital letters
# if  [[ $stringCheck =~ ^[A-Z] ]] # starts with capital letters
# if  ! [[ $stringCheck =~ [A-Z] ]] # does not have capital letters - space between brackets watch syntax
# if  [[ $stringCheck =~ [a-z]$ ]] # ends with lower case
# if  [[ $stringCheck =~ [A-Z]$ ]] # ends with upper case
# if  [[ $stringCheck =~ (aeiou) ]] # grouping of alphabets
# if  [[ $stringCheck =~ ^\^[0‐9a‐dA‐C]*$ ]] # 

digitCheck=222-333-4444
# if  [[ $digitCheck =~ ^[5-9]{3}-[5-9]{3}-[5-9]{4}$ ]] # exact matches {3} {3} and {4}
# if  [[ $digitCheck =~ ^[0-5]{3}-[0-5]{3}-[5-9]{4}$ ]] ## exact matches {3} {3} and {4}
# if  [[ $digitCheck =~ ^[0-5]{1,}-[0-5]{1,}-[0-5]{1,}$ ]] ## {1, } one or more times
# if  [[ $digitCheck =~ ^[0-5]+[0-5]+[0-5]+$ ]] ## + one or more times
# if  [[ $digitCheck =~ ^[0-5]{3,}-[0-5]{3,}-[0-5]{3,}$ ]] ## {1, } three or more times
# if  [[ $digitCheck =~ ^[0-5]{2,3}-[0-5]{0,3}-[0-5]{2,4}$ ]] ## {3, } all match - inexact numbers but in a range

escapeCheck="I am so I eat 01/02/2024 so I am @a heinzbean*man"

# if  [[ $escapeCheck =~ ^[A-Z\sa-z] ]] # spaces between words starts with a capital
# if  [[ $escapeCheck =~ [H[a-z]\*ma ]] # starts with capital, has any letters must have an astrisk *ma
# if  [[ $escapeCheck =~ ^[A-Z\@a\sa-z$] ]] # starts with a capital escapes @ and has a space ends with lower case

# if  [[ $escapeCheck =~ ([0-9]\/{2})*([0-9]\/{2})*([0-9]{4})* ]] # 2 digits/ 2digits/ 4 digits date grouped, escaped and anywhere
# if  [[ $escapeCheck =~ ([0-9]\/{2})?([0-9]\/{2})?([0-9]{4})? ]] # 2 digits/ 2digits/ 4 digits date grouped, escaped and optional match anywhere
# if  [[ $escapeCheck =~ ([0-9]\/{2})+([0-9]\/{2})+([0-9]{4})+ ]] # FIXME - comprehension
#  then echo "Matched"
# else echo "Not matched"
# fi 

exit
echo
