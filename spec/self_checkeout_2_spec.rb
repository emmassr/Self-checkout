require "self_checkout2"

describe Display do
	context "displays welcome message" do
		it "welcomes user" do
			output = StringIO.new
			display = Display.new(output)
			display.welcome # this is a method welcome from the display class
			expect(output.string). to eq("Hello world!\n")
		end
	end

	context "input" do
		it "takes the user input" do
			input = StringIO.new("Hi")
			output = StringIO.new
			display = Display.new(output, input)
			display.get_user_input
			expect(output.string). to eql("Hi\n")
		end
	end
end
