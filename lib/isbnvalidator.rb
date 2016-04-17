#!/usr/bin/ruby

require 'pry'

class IsbnValidator
	def initialize(isbn_num)
		@isbn_num = isbn_num
	end

	def check_isbn
		convert_into_array(@isbn_num)
		if @isbn_arry.count == 10
			calculate_isbn
		else
			invalid
		end
	end

	def double_check_isbn
		double_calculate_isbn if @isbn_arry.count == 10
	end

	private

	def convert_into_array(number)
		@isbn_arry = number.gsub(/-/,'').split('').map(&:to_i)
	end

	def invalid
		puts "Invalid ISBN Number"
		return false
	end

	def calculate_isbn
		result = ((@isbn_arry[0]*10) + (@isbn_arry[1]*9) + (@isbn_arry[2]*8) + (@isbn_arry[3]*7) + (@isbn_arry[4]*6) + (@isbn_arry[5]*5) + (@isbn_arry[6]*4) + (@isbn_arry[7]*3) + (@isbn_arry[8]*2) + (@isbn_arry[9]*1))/11
		puts "Valid ISBN Number"
		return true
	end

	def double_calculate_isbn
		result = ((@isbn_arry[0]*1) + (@isbn_arry[1]*2) + (@isbn_arry[2]*3) + (@isbn_arry[3]*4) + (@isbn_arry[4]*5) + (@isbn_arry[5]*6) + (@isbn_arry[6]*7) + (@isbn_arry[7]*8) + (@isbn_arry[8]*9) + (@isbn_arry[9]*10))/11
		puts "Its is ISBN Number"
		return true	
	end	

end