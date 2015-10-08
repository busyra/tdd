require 'rails_helper'

RSpec.describe "Products API Endpoints", type: :request do
  # before :each do
  #   @product = build(:product)
  # end

  it "sends all products" do

    products = create_list(:product, 10)

    get '/api/products'

    expect(response).to be_success
    expect(response).to have_http_status(200)
  end

  # it "sends one product" do
  #   @product
  # end

end
