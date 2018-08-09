class Display
	def initialize (output = $stdout, input = $stdin)

		@output = output
		@input = input
	end

	def welcome 
		@output.puts "Hello world!"
	end

	def get_user_input
		hello = @input.gets.chomp 
		@output.puts hello

	end
end
