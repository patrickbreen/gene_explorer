require 'spec_helper'

describe User do
	let(:valid_attributes){ 
		{
			first_name: "Patrick",
			last_name: "Breen",
			email: "pbreen@something.edu",
			password: "password",
			password_confirmation: "password"
		}
	}
	context 'validations' do
		let(:user) { User.new(valid_attributes) }
		before do
			User.create(valid_attributes)
		end
		it 'requires an email' do
			expect(user).to validate_presence_of(:email)
		end

		it 'requires a unique email' do
			expect(user).to validate_uniqueness_of(:email)
		end
		it 'requres a well-formatted email' do
			user.email = 'patrick'
			expect(user).to_not be_valid
		end
	end	
end