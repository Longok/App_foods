class CategoriesController < ApplicationController
    before_action :login_admin, only: [:new, :create, :update, :destroy]

    def index
        @categories = Category.includes(:products)
    end

    def new
        @categories = Category.new
    end

    def create
        @categories = Category.new categories_params
        if @categories.save
            flash[:success] = "Tạo danh mục thành công"
            redirect_to categories_path
        else
            flash[:danger] = "Tạo danh mục thất bại"
            render :new, status: :unprocessable_entity
        end
    end

    def show
        @categories = Category.find params[:id]
        @pagy, @products = pagy(@categories.products.all.order("category_id DESC"), items: 12)

    end

    def edit
        @categories = Category.find_by id: params[:id]
    end

    def update
        @categories = Category.find_by id: params[:id]
        if @categories.update categories_params
            flash[:success] = "Sửa danh mục thành công"
            render :index 
        else
            flash[:danger] = "Sửa danh mục thất bại"
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @categories = Category.find_by id: params[:id]
        @categories.destroy
        flash[:success] = "Xóa danh mục thành công"
        redirect_to @categories
    end

    private
    def categories_params
        params.require(:category).permit :name, :id
    end
end
