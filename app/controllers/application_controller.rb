class ApplicationController < ActionController::Base
    include SessionsHelper

    def login_admin
        unless logged_in? && current_user.admin
            flash[:danger] = "Vui lòng đăng nhập admin"
            redirect_to login_path
        end

    end
end
