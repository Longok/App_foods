class CartItemsController < ApplicationController

    def create
        @product = Product.find(params[:id])
        @cart_item = @cart.add_product(@product)
        @cart_item.save
        flash[:info] = "Đã thêm vào giỏ hàng"
        redirect_to cart_path
    end

    def add_quantity
        @cart_item = CartItem.find(params[:id])
        @cart_item.quantity += 1
        @cart_item.save
        flash[:info] = "Cập nhật số lượng thành công"
        redirect_to cart_path(@cart)
    end

    def update_quantity
        @cart_item = CartItem.find(params[:id])
        quantity = params[:quantity].to_i
        if @cart_item && quantity >= 1
            @cart_item.update(quantity: quantity)
        end
        @cart_item.save
        redirect_to cart_path
    end

    def delete_item
        @cart_item = CartItem.find(params[:id])
        @cart_item.destroy
        redirect_to cart_path
    end

    private
    def cart_item_params
        params.require(:cart_item).permit(:quantity, :product_id, :cart_id)
    end
end
