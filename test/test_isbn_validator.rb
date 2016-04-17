#!/usr/bin/ruby

require 'pry'

require_relative '../lib/isbnvalidator'
require "test/unit"

class TestIsbnValidator < Test::Unit::TestCase

	def test_check_isbn_true
		isbn = IsbnValidator.new('0-306-40615-2')
		assert_equal(true, isbn.check_isbn)
	end

	def test_check_isbn_false
		isbn = IsbnValidator.new('0-306-40615-22')
		assert_equal(false, isbn.check_isbn)
	end

	# def test_convert_to_arry
	# 	isbn = IsbnValidator.new('0-306-40615-2')
	# 	assert_equal([0, 3, 0, 6, 4, 0, 6, 1, 5, 2], isbn.convert_into_array)
	# end

	# def test_invalid
	# 	isbn = IsbnValidator.new('0-306-40615-223')
	# 	isbn.convert_into_array	
	# 	assert_equal(false, isbn.invalid)	
	# end

	# def test_calculate_isbn
	# 	isbn = IsbnValidator.new('0-306-40615-2')
	# 	isbn.convert_into_array
	# 	assert_equal(true, isbn.calculate_isbn)
	# end

	# def test_double_check_isbn
	# 	isbn = IsbnValidator.new('0-306-40615-2')
	# 	isbn.convert_into_array
	# 	assert_equal(true, isbn.double_check_isbn)
	# end

end