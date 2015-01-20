require 'spec_helper'

describe "products/edit" do
  before(:each) do
    @product = assign(:product, stub_model(Product,
      :description => "MyString",
      :number_available => 1
    ))
  end

  it "renders the edit product form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", product_path(@product), "post" do
      assert_select "input#product_description[name=?]", "product[description]"
      assert_select "input#product_number_available[name=?]", "product[number_available]"
    end
  end
end
