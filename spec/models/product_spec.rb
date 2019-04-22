require 'rails_helper'

RSpec.describe Product, type: :model do
  before :each do
    @product = Product.new(
      name: 'New Item',
      price_cents: 5,
      quantity: 3,
      category: Category.new
    )
  end

  describe "Validations" do
    it "is valid with valid attributes" do
      expect(@product).to be_valid
    end
  end

  it "is not valid without a name" do
    @product.name = nil

    expect(@product).to_not be_valid
  end

  it "is not valid without a price" do
    @product.price_cents = nil

    expect(@product).to_not be_valid
  end

  it "is not valid without a quantity" do
    @product.quantity= nil

    expect(@product).to_not be_valid
  end

  it "is not valid without a category" do
    @product.category = nil

    expect(@product).to_not be_valid
  end
end
