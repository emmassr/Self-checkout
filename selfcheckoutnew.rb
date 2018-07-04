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
		while /\D/.match(input)
			puts "Please enter a valid number"
			input = gets.chomp 
		end
	end

	def checkout_cart
		answer = "N"
		while answer == "N"
			get_item
		 	get_price 
			get_quantity
			
			while @quantity > 0
				item = Item.new(@item_name, @price)
				@basket.items_added(item)
				@quantity -= 1
			end
			puts " Do you want to checkout? (Y/N)"
			answer = gets.chomp

		
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
