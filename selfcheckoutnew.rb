require_relative "lib/basket"
require_relative "lib/items"
require_relative "lib/Checkout"
class SelfCheckout
	def initialize()
		@basket = Basket.new
		@checkout = Checkout.new(@basket,10) # passed in two arguments ( basket, tax) from the checkout file.
	 
	end

	def checkout_cart
		 
		while @basket.items.length < 3
			puts"Enter the name of item:"
			item_name = gets.chomp 
		 	puts "Enter the price of #{item_name}"
			price = gets.chomp.to_i
			puts "Enter the quantity of #{item_name}"
			quantity = gets.chomp.to_i
			while quantity > 0
				item = Item.new(item_name,price)
				@basket.items_added(item)
				quantity -= 1
			end
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








