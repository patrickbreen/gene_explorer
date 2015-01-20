require 'spec_helper'

describe UserSessionsController do

  describe "GET 'new'" do
    it "returns http success" do
      get 'new'
      response.should be_success
    end
  end

  describe "POST 'create'" do
    context "with correct credentials" do
      let!(:user) {User.create(first_name: "Jason", last_name: "Seifer", email: "my@email.com", password: "password", password_confirmation:"password")}
      it "authenticates the user" do
        User.stub(:find_by).and_return(user)
        expect(user).to recieve(:authenticate)
        post :create, email: "my@email.com", password: "password"
      end
    end
  end

end
