require 'rails_helper'

RSpec.describe "products/edit", type: :view do
  let(:product) {
    Product.create!(
      name: "MyString",
      quantity: 1,
      price: "9.99",
      description: "MyText"
    )
  }

  before(:each) do
    assign(:product, product)
  end

  it "renders the edit product form" do
    render

    assert_select "form[action=?][method=?]", product_path(product), "post" do

      assert_select "input[name=?]", "product[name]"

      assert_select "input[name=?]", "product[quantity]"

      assert_select "input[name=?]", "product[price]"

      assert_select "textarea[name=?]", "product[description]"
    end
  end
end
