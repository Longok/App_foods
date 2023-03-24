class HomeController < ApplicationController

    def index
        @categories = Category.includes(:products).order("id DESC")
        @pagy, @products = pagy(Product.all.order("category_id DESC"), items: 12)
        if session[:user_id] && @cart
            @user = User.find_by(id: session[:user_id])
        end
    end
end
