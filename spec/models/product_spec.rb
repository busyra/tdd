require 'rails_helper'

RSpec.describe Product, type: :model do
  it "is valid when it has a name, description and price" do
    product = build(:product)
    expect(product).to be_valid
  end
  it "is invalid when it does not have a name" do
    product = build(:product, name: nil)
    expect(product).to be_invalid
  end
  it "is invalid when it does not have a description" do
    product = build(:product, description: nil)
    expect(product).to be_invalid
  end
  it "is invalid when it does not have a price" do
    product = build(:product, price: nil)
    expect(product).to be_invalid
  end

  it "shows name, description, and price in one string with product_summary" do
     product = build(:product, name: "Space Suite", description: "For outer space style", price: "500.00")
     expect(product.product_summary).to eq "Space Suite: For outer space style, $500.00"
  end
end
