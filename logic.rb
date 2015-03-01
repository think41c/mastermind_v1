class Logic    # Generate the Sequence, Evalutes Position & Color, Evaluates Color

	attr_reader :right_position, :right_color

	def random_sequence  # Make a random sequence of letters using b y g r only.
		@sequence_gen = (%w[b y g r]*4).shuffle.sample(4)
	end

	def calculate_right_color(input, sequence, right_pos)
		# Find out how many colors are present in the users input 
		user_number_of_r = input.count { |x| x == "r" } 
		user_number_of_g = input.count { |x| x == "g" } 
		user_number_of_y = input.count { |x| x == "y" }  
		user_number_of_b = input.count { |x| x == "b" } 

		# Find out how many colors are present in the computers sequence
		comp_number_of_r = sequence.count { |x| x == "r" } 
		comp_number_of_g = sequence.count { |x| x == "g" } 
		comp_number_of_y = sequence.count { |x| x == "y" }  
		comp_number_of_b = sequence.count { |x| x == "b" } 

		# Establish the min count of occurances of each color in both the user sequence and computer sequence
		min_r = [user_number_of_r, comp_number_of_r].min
		min_g = [user_number_of_g, comp_number_of_g].min
		min_y = [user_number_of_y, comp_number_of_y].min
		min_b = [user_number_of_b, comp_number_of_b].min

		# Add up all the lowest mins together and subtract them from the right_positions, and that's the # that are right color/wrong position.
		total_letters = min_r + min_g + min_y + min_b
		right_color = right_pos - total_letters
		right_color.abs   # This has to be the absolute value since if the right positions are 0 and there's correct colors, it would be negative.
	end

	def calculate_right_position(input, sequence)   # Calculates right color, right position.
		@right_position = 0                         # Initialize the right color/position as 0.
		input.each_with_index do |color, position|            
			if color == sequence[position]
				@right_position += 1
			end
		end
		@right_position
	end

	def evaluate_guess(input)                              
		@right_position      = calculate_right_position(input, @sequence_gen)
		@right_color         = calculate_right_color(input, @sequence_gen, @right_position)
	end
end
