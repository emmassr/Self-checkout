require "basket"

describe Basket do
  it "returns an empty basket" do
	basket = Basket.new
	expect(basket.items).to eql([])
  end

  it "adds an item to the basket" do
    basket = Basket.new
    fruit = Item.new("apple", 1)#assigned new value to an instance from Items class( item, price) and this translates to ("apple", 1)
    add_ons = basket.items_added(fruit)
    expect(add_ons.count).to eql(1)
  end

  it "calculates the price of item in basket" do
    basket = Basket.new
    fruit = Item.new("apple", 1)
    basket.items_added(fruit)  	
  	expect(basket.total_cost).to eql(1)
  end

  it "calculates the price for more than one item" do
  	basket = Basket.new
    fruit = Item.new("apple", 1)
    vegetable = Item.new("tomato", 2)
    basket.items_added(fruit)
    basket.items_added(vegetable)  	
  	expect(basket.total_cost).to eql(3)
  end


end
