class HomeController < ApplicationController

    def index
        # @categories = Category.all
        # @products = Product.all.order("category_id DESC")
        @categories = Category.includes(:products).order("id DESC")
        @pagy, @products = pagy(Product.all.order("category_id DESC"), items: 12)
    end
end
