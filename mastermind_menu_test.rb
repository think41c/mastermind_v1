require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './mastermind_menu'

class MastermindMenuTest < Minitest::Test

	def test_the_menu_exists
		menu = MastermindMenu.new
		assert true, menu
	end
end