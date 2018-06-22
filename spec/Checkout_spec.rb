require "Checkout"
require "basket"
require "Items"

describe Checkout do
  it "takes all items in the basket" do
  	basket = Basket.new
  	apple = Item.new("apple", 1)
  	banana = Item.new("banana",2)
  	basket.items_added(apple)
  	basket.items_added(banana)
  	@checkout = Checkout.new(basket, 10) 
  end

  it "includes 10 percent tax" do
  	basket = Basket.new
  	total = Checkout.new(basket, 10)
  	expect(total.tax_amount).to eql(0.10)
  end

  it "includes the calculated total" do
  	basket = Basket.new
  	apple = Item.new("apple", 1)
  	banana = Item.new("banana",2)
  	basket.items_added(apple)
  	basket.items_added(banana) # need to repeat this step since the diff blocks of the test dont know about whats defined in each other
  	grand_total = Checkout.new(basket,10)
    expect(grand_total.calculated_total).to eql(3.30)
  end
end

# look into code that lets you inherit and avoid duplication ( before: each do)

