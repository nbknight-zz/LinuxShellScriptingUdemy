#!bin/bash

# This script will create an account for a new user to the company.
# You will be prompted for the username, person name, and password

# Check if the user has root privilages
ROOT_UID=0
if [[ ${UID} -ne ${ROOT_UID}  ]]
then
	echo 'You need to be root to do this.'
	exit 1
fi

# Ask for a user name
read -p 'Enter the username to create: ' USER_NAME

# Ask for the name of the user
read -p 'Enter the name of the user the account is for: ' COMMENT

# Ask for the password
read -p 'Enter the password to use for the account: ' PASSWORD

# Creates the new user
useradd -c "${COMMENT}" -m ${USER_NAME}

# Set the password
echo ${PASSWORD} | passwd --stdin ${USER_NAME}

# Let's the user know if the account was not created
TEST_USER_NAME=$(id -un "${USER_NAME}")
if [[ "${TEST_USER_NAME}" != "${USER_NAME}" ]]
then
	echo 'User Account creation was not successful'
	exit 1
else
	echo 'Account created successfully'	
fi	
# Displays the username, pw, and host where the account was created
echo "New username is: ${USER_NAME}"
echo "New password is: ${COMMENT}"
echo "New account created on host $(hostname --short)" 

# Force password change on first login
passwd -e ${USER_NAME}
