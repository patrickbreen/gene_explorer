require 'spec_helper'

describe "shopping_carts/index" do
  before(:each) do
    assign(:shopping_carts, [
      stub_model(ShoppingCart,
        :product_id => 1
      ),
      stub_model(ShoppingCart,
        :product_id => 1
      )
    ])
  end

  it "renders a list of shopping_carts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
