require "Checkout"   # error loading file aybe need to reintstall bundle of something
require "basket"
require "Items"
require "selfcheckoutnew"

describe SelfCheckout do
  it "takes name of the item" do
    expect(SelfCheckout.get_item). to eq 'apple'

  end

  context "formatting currency" do
    it "rounds a long number to two decimal places" do
      checkout = SelfCheckout.new
      long_number = 10.000000000000000001
      formatted = 10.00
      expect(checkout.format_currency(long_number)).to eq formatted
    end
  end

end
