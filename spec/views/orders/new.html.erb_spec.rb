require 'spec_helper'

describe "orders/new" do
  before(:each) do
    assign(:order, stub_model(Order,
      :description => "MyString",
      :price => 1.5,
      :quantity => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", orders_path, "post" do
      assert_select "input#order_description[name=?]", "order[description]"
      assert_select "input#order_price[name=?]", "order[price]"
      assert_select "input#order_quantity[name=?]", "order[quantity]"
      assert_select "input#order_user_id[name=?]", "order[user_id]"
    end
  end
end
