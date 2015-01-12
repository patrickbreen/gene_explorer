class UserSessionsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by(email: params[:email])
  	if user && user.authenticate(params[:password])
  		session[:user_id] = user.id
  		flash[:success] = "You have successfully logged in"
  		redirect_to root_path
  	else
  		flash[:error] = "Error logging in"
  		render action: 'new'
  	end
  end

  def destroy
  	session[:user_id] = nil
  	flash[:success] = "You have successfully logged out"
  	redirect_to root_path
  end
end