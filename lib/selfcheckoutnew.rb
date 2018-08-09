require_relative "basket"
require_relative "items"
require_relative "Checkout"
class SelfCheckout
	def initialize()
		@basket = Basket.new
		@checkout = Checkout.new(@basket,10) # passed in two arguments ( basket, tax) from the checkout file.
	end
	def get_item
		puts"Enter the name of the item"
		@item_name = gets.chomp

	end
	def get_price
		puts "Enter the price of #{@item_name}"
		price = gets.chomp
		validate_input(price)
	end
	def get_quantity
		puts "Enter the quantity of #{@item_name}"
		quantity = gets.chomp
		validate_input(quantity)
	end
	def validate_input(input)
		while /\D/.match(input) # /\^yn/.match(answer)
			puts "Please enter a valid number"
			input = gets.chomp
		end
		input.to_i
	end
	def validate_decision(answer)
		valid_moves = ["Y", "N"]
		valid_moves.include?(answer)
	end
	def checkout_decision
		puts " Do you want to checkout? (Y/N)"
		answer = gets.chomp.upcase
		while !validate_decision(answer)
			puts "Please enter a valid response"
			answer = gets.chomp.upcase
			#checkout_decision
		end

		answer

	end
	def checkout_cart
		answer = "N"
		while answer == "N"
			list_of_items = []
			list_of_items << get_item
			list_of_items << get_price
			list_of_items << get_quantity
			puts list_of_items.inspect

			@basket.items_added(list_of_items[2],list_of_items[1])
			answer = checkout_decision # the value of answer from the checkout_decision method
		end
		calculated_total
		
	end
	def calculated_total
		subtotal = format_currency(@basket.total_cost)
		tax_total =format_currency(@checkout.tax_total)
		total = format_currency(@checkout.calculated_total)

		puts "Subtotal: £ #{subtotal}"
		puts "Tax: £ #{tax_total}"
		puts "Total: £#{total}"
	end
	def format_currency(long_number)
		long_number.round(2)
	end
end


selfcheckout = SelfCheckout.new()
selfcheckout.checkout_cart

#when running program add lib/selfcheckoutnew
