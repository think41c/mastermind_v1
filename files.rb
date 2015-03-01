require_relative 'playing_interface'

class Files

	def save_high_scores(to_file="high_scores.txt")
		@player = PlayingInterface.new
  		File.open(to_file, "w") do |file|
	    file.puts "#{@title} High Scores:"
	   	[1..3].each do |player|
	        #formatted_name = player.ljust(20, '.')
	      	file.puts "Anything"
	    	end
  		end
	end
end
