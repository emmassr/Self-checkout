class Checkout
	def initialize(basket,tax)
		@basket = basket
		@tax = tax.to_f
	end

	def tax_amount
		@tax / 100
	end

	def tax_total
    (@basket.total_cost * tax_amount)
  end

  def calculated_total
    (@basket.total_cost + tax_total.to_f).round(2)
  end

end
