#!/bin/bash

# This script displays various information to the screen

# Display 'Hello'
echo 'Hello'

# Assign a value to a variable
WORD='script'

# Display that value using the variable
echo "$WORD"

# Demostrate that single quotes cause variables to not get expanded.
echo '$WORD'

# combine the variable with hard-coded text
echo "This is a shell $WORD"

# Display the contents of the variable using an alternative syntax.
echo "This is a shell ${WORD}"

# aPPEND TEXT TO THE VARIABLE.
echo "${WORD}ing is fun!"

# Show how NOT to append text to a variable
echo "$WORDing is fun!"

# Create a new variable
ENDING='ed'

# Combind the two variables
echo "This is ${WORD}${ENDING}"

# Change the value stored in the Ending variable
ENDING='ing'

# Combind the two variables
echo "${WORD}${ENDING} is fun"

# Reassign value to ENDING
ENDING='s'
echo "You are going to write many ${WORD}${ENDING} in this class!"