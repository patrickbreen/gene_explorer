class Product < ActiveRecord::Base
	has_many :shopping_carts
end
