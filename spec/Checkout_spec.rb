require "Checkout"
require "basket"
require "Items"


describe Checkout do
  it "takes all items in the basket" do
  	basket = Basket.new
  	basket.items_added(2, 1)
  	@checkout = Checkout.new(basket, 10)
  end

  it "includes 10 percent tax" do
  	basket = Basket.new
  	total = Checkout.new(basket, 10)
  	expect(total.tax_amount).to eql(0.10)
  end

  it "includes the calculated total" do
  	basket = Basket.new
  	basket.items_added(2, 1)
  	grand_total = Checkout.new(basket,10)
    expect(grand_total.calculated_total).to eql(2.20)
  end
end

# look into code that lets you inherit and avoid duplication ( before: each do)
