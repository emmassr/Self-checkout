class Basket
	attr_reader :items
	def initialize
		@items = [] # the [] symbol is for an empty list
	end

	def items_added(item)
		items << item # this is linked to items in the Items class rb folder. So when running in test created a new instance of the Items class
	end

	def total_cost
		total = @items.collect {|item| item.price}
		total.sum # this will add all the items in the basket
	end
end



