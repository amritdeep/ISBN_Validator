#!/usr/bin/ruby

require_relative 'lib/isbnvalidator'

input = ARGV[0]
isbn_num = IsbnValidator.new(input)
isbn_num.check_isbn
# isbn_num.convert_into_array
# isbn_num.calculate_isbn
# isbn_num.double_check_isbn