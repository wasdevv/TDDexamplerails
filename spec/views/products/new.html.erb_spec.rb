require 'rails_helper'

RSpec.describe "products/new", type: :view do
  before(:each) do
    assign(:product, Product.new(
      name: "MyString",
      quantity: 1,
      price: "9.99",
      description: "MyText"
    ))
  end

  it "renders new product form" do
    render

    assert_select "form[action=?][method=?]", products_path, "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[quantity]"

      assert_select "input[name=?]", "product[price]"

      assert_select "textarea[name=?]", "product[description]"
    end
  end
end
