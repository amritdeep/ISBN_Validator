# ISBN_Validator

## Introduction

An ISBN-10 number is a 10 digit unique identifier for books and publications. Your task is to take an ISBN and check to see if it is a valid number.

## Problem

Using any language you're comfortable with, write a validator to check if an ISBN number is valid. Return a boolean true or false value given a number. Also, include documentation on how to run your program (CLI is acceptable).

The first nine digits of an ISBN number is the actual identifier for the book and the final digit is a checksum.

The formula for verifying an ISBN number can be found on: [ISBN-10 check digits on Wikipedia](https://en.wikipedia.org/wiki/International_Standard_Book_Number#ISBN-10_check_digits)

In summary, you multiply the first digit by 10, the second by 9, the third by 8, etc for all 10 digits in the sequence, then divide by 11. If there is a remainder, it is an invalid number. One gotcha is the final digit can in fact be a character, "X" which represents the number 10.


## To run it

1. Clone the project in Local machine

git clone git@github.com:amritdeep/ISBN_Validator.git

2. Go to the project path

cd ../ISBN_Validator

3. Run isbnvalidator with isbn number (0-306-40615-2) as

ruby validator.rb 0-306-40615-2

0-306-40615-2 is isbn number
