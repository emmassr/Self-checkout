require "basket"

describe Basket do
  it "returns an empty basket" do
	basket = Basket.new
	expect(basket.items).to eql([])
  end

  it "adds an item to the basket" do
    basket = Basket.new
    add_ons = basket.items_added(2, 1)
    expect(add_ons.count).to eql(1)
  end

  it "calculates the price of item in basket" do
    basket = Basket.new
    basket.items_added(2, 1)
  	expect(basket.total_cost).to eql(2)
  end

  it "calculates the price for more than one item" do
  	basket = Basket.new
    basket.items_added(2, 1)
    basket.items_added(3, 3)
  	expect(basket.total_cost).to eql(11)
  end


end
