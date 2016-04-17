#!/usr/bin/ruby

require_relative '../lib/isbnvalidator'
require "test/unit"

class TestIsbnValidator < Test::Unit::TestCase
	def test_check_isbn_true
		isbn = IsbnValidator.new('0-306-40615-2')
		assert_equal(true, isbn.check_isbn)
		assert_equal(true, isbn.double_check_isbn)
	end

	def test_check_isbn_false
		isbn = IsbnValidator.new('0-306-40615-22')
		assert_equal(false, isbn.check_isbn)
	end
end