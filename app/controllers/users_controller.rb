class UsersController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new user_params
        if @user.save
            log_in @user
            flash[:success] = "Tạo tài khoản thành công"
            redirect_to root_path
        else
            flash[:danger] = "Tạo tài khoản không thành công"
            render :new, status: :unprocessable_entity #rails 7 dùng turbo_stream hoặc tắt data: { turbo: false }) trong form
        end
    end
    private
    def user_params
        params.require(:user).permit :name, :email, :password, :password_confirmation
    end
end
