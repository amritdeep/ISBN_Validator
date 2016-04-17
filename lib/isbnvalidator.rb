#!/usr/bin/ruby

class IsbnValidator
	def initialize(isbn_num)
		@isbn_num = isbn_num
	end

	def check_isbn
		convert_into_array(@isbn_num)
		calculate_isbn
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
		arry = []

		if @isbn_arry.count == 10
			@isbn_arry.each_with_index { |val, index| arry << val * index }
			arry_sum = arry.inject { |sum, n| sum +n }
			result = arry_sum / 11	

			puts "Valid ISBN Number"
			return true	
		else
			invalid
		end

	end
end