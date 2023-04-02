class AdminController < ApplicationController
    before_action :login_admin

    def index
        render layout: false
    end

    def new
        render layout: false
    end

    def create     
        user = User.find_by(email: "admin@gmail.com")
        if user && user.authenticate(params[:session][:password])
            flash.now[:success] = "Đăng nhập thành công"
            redirect_to admin_path
        else
          flash.now[:danger] = "Email hoặc mật khẩu không đúng"
          render :new, status: :unprocessable_entity
        end
    end

end
