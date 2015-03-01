require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './playing_interface'
require './mastermind_menu'

class PlayingInterfaceTest < Minitest::Test

	def test_the_interface_exists
		interface = PlayingInterface.new
		assert true, interface
	end

	def test_it_can_quit
		skip
		interface = PlayingInterface.new
		menu = MastermindMenu.new
		assert interface.quit?("q"), @menu.menu
	end
end
