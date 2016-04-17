#!/usr/bin/ruby

require 'pry'

require_relative '../lib/isbnvalidator'
require "test/unit"

class TestIsbnValidator < Test::Unit::TestCase

	def test_convert_to_arry
		isbn = IsbnValidator.new('0-306-40615-2')
		assert_equal([0, 3, 0, 6, 4, 0, 6, 1, 5, 2], isbn.convert_into_array)
	end

	def test_calculate_isbn
		isbn = IsbnValidator.new('0-306-40615-2')
		isbn.convert_into_array
		assert_equal(true, isbn.calculate_isbn)
	end

end