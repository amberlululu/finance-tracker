class UsersController < ApplicationController
  def my_portfolio
    # set a varable @tracked_stocks then in html you will be able to use this variable 
    @tracked_stocks = current_user.stocks
  end

  def my_friends
    @friends = current_user.friends
  end 

  def search
    render json: params[:friend]

  end 
end
