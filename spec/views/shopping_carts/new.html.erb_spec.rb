require 'spec_helper'

describe "shopping_carts/new" do
  before(:each) do
    assign(:shopping_cart, stub_model(ShoppingCart,
      :product_id => 1
    ).as_new_record)
  end

  it "renders new shopping_cart form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", shopping_carts_path, "post" do
      assert_select "input#shopping_cart_product_id[name=?]", "shopping_cart[product_id]"
    end
  end
end
