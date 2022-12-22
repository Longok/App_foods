class CartsController < ApplicationController

    def show
        
    end

    def destroy
        session.delete(:cart_id)
        @cart = nil
        redirect_to cart_path
    end
end
