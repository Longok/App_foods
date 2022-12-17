class ProductsController < ApplicationController
    before_action :login_admin, only: [:new, :create]

    def index
        @products = Product.all.order("id DESC")
    end

    def new
        @products = Product.new
    end

    def create
        @products = Product.create product_params
        if @products.save
            flash[:success] = "Thêm sản phẩm thành công"
            redirect_to products_path
        else
            flash[:danger] = "Thêm sản phẩm thất bại"
            render :new, status: :unprocessable_entity
        end
    end


    private

    def product_params
        params.require(:product).permit :name, :describe, :price, :category_id, :image
    end
end
