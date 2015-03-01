require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './playing_interface'
require './input_output'

class MastermindMenuTest < Minitest::Test
	
	def test_it_can_print_a_simple_message
		messages = UserMessages.new
		assert_equal messages.prompt, "\nPlease enter your response => "
	end

	def test_it_can_count_guesses
		messages = UserMessages.new
		msg = messages.guess_stat(3)
		assert_equal msg, "Nice guess, but not quite! That was guess #3. 
		\nYou have 7 remaining. Guess again or type 'q' to quit."
	end

	def test_it_can_display_time_formatted
		messages = UserMessages.new
		msg = messages.timer_result(3, 30)
		assert_equal msg, "This round took you 3 minutes and 30 seconds."
	end
end
