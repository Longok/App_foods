class CartsController < ApplicationController

    def show
        @categories = Category.all
    end

    def destroy
        session.delete(:cart_id)
        @cart = nil
        redirect_to cart_path
    end
end
