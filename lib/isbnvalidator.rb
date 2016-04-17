#!/usr/bin/ruby


class IsbnValidator
	def initialize(isbn_num)
		@isbn_num = isbn_num
	end

	def convert_into_array
		@isbn_arry = @isbn_num.gsub(/-/,'').split('').map(&:to_i)		
	end

	def calculate_isbn
		result = ((@isbn_arry[0]*10) + (@isbn_arry[1]*9) + (@isbn_arry[2]*8) + (@isbn_arry[3]*7) + (@isbn_arry[4]*6) + (@isbn_arry[5]*5) + (@isbn_arry[6]*4) + (@isbn_arry[7]*3) + (@isbn_arry[8]*2) + (@isbn_arry[9]*1))/11
		puts "Valid ISBN Number"
	end

end