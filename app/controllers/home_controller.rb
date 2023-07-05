class HomeController < ApplicationController

    def index
        @categories = Category.includes(:products)
        @pagy, @products = pagy(Product.order("id DESC"), items: 4)
        if session[:user_id] && @cart
            @user = User.find_by(id: session[:user_id])
        end
    end

    def notification
        
    end
end
