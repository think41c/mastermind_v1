require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './playing_interface'
require './mastermind_menu'

class VerifierTest < Minitest::Test

	def test_it_can_verify_good_input 
		skip
		verifier = Verifier.new
		messages = UserMessages.new
		result = verifier.right_number_chars?(4)
		assert_equal result, nil
	end

	def test_it_can_verify_possible_colors
		skip
		verifier = Verifier.new
		verifier.right_colors?('g')
		result = verifier.possible_colors[1] == 'g'
		assert result 
	end
end
