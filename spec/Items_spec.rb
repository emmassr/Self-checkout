require "Items"

describe Item do

  it "returns cost of the item" do
	item = Item.new("fruit", " " ) # in the Item class, defined two things (item and price) so need to call two things here as well even though just testing 'item'. So in place of price i entered an empty stirng " "
	expect(item.item).to eql ("fruit")
  end
  
  it "returns the price" do
    item = Item.new("fruit", 1)
    expect(item.price).to eql(1)
  end
end

