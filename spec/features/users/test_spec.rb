require 'spec_helper'

describe "example describe block" do
	it "should pass the test" do
		visit '/'
		expect(page).to have_content("Copyright 2015 Patrick Breen")
	end
end