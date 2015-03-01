class Verifier

	attr_reader :possible_colors

	def initialize
		@logic    = Logic.new
		@messages = UserMessages.new
		possible_colors = @possible_colors
	end

	def verify_input(converted_input)
		right_number_chars?(converted_input)
		right_colors?(converted_input)
	end

	def right_number_chars?(input)                                     
		if input.size != 4 then puts @messages.wrong_characters end
	end

	def right_colors?(input)
		@possible_colors = %w[r g y b]
		right_colors = input.all? {|x| @possible_colors.include? x}
		if right_colors == false then puts @messages.wrong_color end
	end

end
