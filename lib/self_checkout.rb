class Checkout

	def cost_of_items (item_price, quantity)
		item_price * quantity
	end

	def tax_rate (tax_percent, price)
		(5.5/100) * price
	end

	def total (cost_of_items, tax_rate)
		cost_of_items + tax_rate
	end
end
