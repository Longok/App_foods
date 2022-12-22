class ApplicationController < ActionController::Base
    include SessionsHelper
    before_action :current_cart

    def login_admin
        unless logged_in? && current_user.admin
            flash[:danger] = "Vui lòng đăng nhập admin"
            redirect_to login_path
        end
    end

    def current_cart
        @cart ||= Cart.find_by id: session[:cart_id]
        if @cart.nil?
            @cart = Cart.create
            session[:cart_id] = @cart.id
            @cart
        end
    end

end
