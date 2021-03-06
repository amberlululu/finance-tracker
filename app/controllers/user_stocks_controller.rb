class UserStocksController < ApplicationController
    def create
        stock = Stock.check_db(params[:ticker])
        if stock.blank?
            stock = Stock.new_lookup(params[:ticker])
            stock.save
        end 
        @user_stock = UserStock.create(user: current_user, stock:stock)
        flash[:notice] = "Stock #{stock.name} was successfully added to your portfolio"
        redirect_to my_portfolio_path

    end 


    def destroy
        # find the stock to be destroyed
        stock = Stock.find(params[:id])
        # find the right user corresponding to that stock
        user_stock = UserStock.where(user_id: current_user.id, stock_id: stock.id).first
        # delete the connection with user and stock
        user_stock.destroy
        flash[:notice] = "#{stock.ticker} was successfully removed from your portfolio"
        redirect_to my_portfolio_path

    end 

end
