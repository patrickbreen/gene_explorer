class ShoppingCartsController < ApplicationController
  before_action :set_shopping_cart, only: [:destroy]

  def index
    @shopping_carts = @current_user.shopping_carts.all
  end



  def create
    @shopping_cart = ShoppingCart.new(shopping_cart_params)

    respond_to do |format|
      if @shopping_cart.save
        format.html { redirect_to user_shopping_carts_path(@current_user), notice: 'Shopping cart was successfully created.' }
      else
        format.html { redirect_to products_path }
      end
    end
  end

  def destroy
    @shopping_cart.destroy
    respond_to do |format|
      format.html { redirect_to user_shopping_carts_url(@current_user) }
    end
  end

  private
    def set_shopping_cart
      @shopping_cart = ShoppingCart.find(params[:id])
    end

    def shopping_cart_params
      params.require(:shopping_cart).permit(:product_id, :user_id, :quantity)
    end
end
