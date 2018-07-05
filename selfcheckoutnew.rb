require_relative "lib/basket"
require_relative "lib/items"
require_relative "lib/Checkout"
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
		@price = price.to_i

	end

	def get_quantity
		puts "Enter the quantity of #{@item_name}"
		quantity = gets.chomp
		validate_input(quantity)
		@quantity = quantity.to_i
	end

	def validate_input(input)
		while /\D/.match(input) # /\^yn/.match(answer)
			puts "Please enter a valid number"
			input = gets.chomp 
		end
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
			get_item
		 	get_price 
			get_quantity


			
			while @quantity > 0. 
				item = Item.new(@item_name, @price)
				@basket.items_added(item)
				@quantity -= 1. # this part of code takes items and aass it to the basket
			end
			answer = checkout_decision. # the value of answer from the checkout_decision method 
			
			
		end

		calculated_total
		
	end	



	def calculated_total
		subtotal = @basket.total_cost
		tax_total = @checkout.tax_total
		total = @checkout.calculated_total

	
		puts "Subtotal: £ #{subtotal}"
		puts "Tax: £ #{tax_total}"
		puts "Total: £#{total}"
	end
end


selfcheckout = SelfCheckout.new()
selfcheckout.checkout_cart
