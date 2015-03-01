require_relative 'mastermind_menu'
require_relative 'input_output'

@messages = UserMessages.new
@menu     = MastermindMenu.new
@messages.clearing
@menu.menu