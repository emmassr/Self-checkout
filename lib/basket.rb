class Basket
	attr_reader :items
	def initialize
		@items = [] # the [] symbol is for an empty list
	end
	def items_added(quantity,price)
		items << [quantity,price]
	end

	def total_cost
		total = @items.collect {|quantity_and_item| quantity_and_item[0] * quantity_and_item[1]} 
		total.sum # this will add all the items in the basket
	end
end
