#!/bin/bash

# Prompt the user to enter the first number
echo "Enter the first number:"
read num1

# Prompt the user to enter the second number
echo "Enter the second number:"
read num2

# Calculate the sum using bc for floating-point arithmetic
sum=$(echo "$num1 + $num2" | bc)

# Display the result
echo "The sum of $num1 and $num2 is $sum"
