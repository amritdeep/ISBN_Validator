#!/usr/bin/ruby

input = ARGV[0]
isbn_num = input.gsub(/-/,'').split('').map(&:to_i)

if isbn_num.count == 10 
	multi = ((isbn_num[0]*10) + (isbn_num[1]*9) + (isbn_num[2]*8) + (isbn_num[3]*7) + (isbn_num[4]*6) + (isbn_num[5]*5) + (isbn_num[6]*4) + (isbn_num[7]*3) + (isbn_num[8]*2) + (isbn_num[9]*1))/11	
	double_check = ((isbn_num[0]*1) + (isbn_num[1]*2) + (isbn_num[2]*3) + (isbn_num[3]*4) + (isbn_num[4]*5) + (isbn_num[5]*6) + (isbn_num[6]*7) + (isbn_num[7]*8) + (isbn_num[8]*9) + (isbn_num[9]*10))/11
	puts multi
	puts double_check
	puts "Valid ISBN number"
else
	puts "Not Valid ISBN number"
end