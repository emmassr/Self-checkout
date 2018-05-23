require "self_checkout"

describe Checkout do


describe ".cost_of_items" do
	it "returns price of the Item" do
	subject = Checkout.new
	expect(subject.cost_of_items(25,2)) .to eql (50)
	end
 end

describe ".tax_rate" do
	it "returns tax amount" do
	subject = Checkout.new
	expect(subject.tax_rate(5.5/100,64)) .to eql (3.52)
	end
end
describe ".total" do
	it "returns total amount" do
	subject = Checkout.new
	expect(subject.total(50,3.52)) .to eql (53.52)
	end
end
end