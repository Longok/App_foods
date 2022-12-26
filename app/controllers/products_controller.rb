class ProductsController < ApplicationController
    before_action :login_admin, only: [:new, :create, :update, :destroy]

    def index
        @products = Product.all.order("id DESC")
        @categories = Category.all
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

    def edit
        @products = Product.find params[:id]
    end

    def update
        @products = Product.find params[:id]
        if @products.update product_params
            flash[:success] = "Cập nhật sản phẩm thành công"
            redirect_to products_path
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @products = Product.find params[:id]
        @products.destroy
        flash[:success] = "Xóa sản phẩm thành công"
        redirect_to products_path
    end
    private

    def product_params
        params.require(:product).permit :name, :describe, :price, :category_id, :image
    end
end
