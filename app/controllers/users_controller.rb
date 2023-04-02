class UsersController < ApplicationController
    # before_action :login_admin, only: [:index, :new, :create, :destroy]

    def index
        @users = User.all
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new users_params
        if @user.save
            log_in @user
            flash[:success] = "Tạo tài khoản thành công"
            redirect_to root_path
        else
            flash[:danger] = "Tạo tài khoản không thành công"
            render :new, status: :unprocessable_entity #rails 7 dùng turbo_stream hoặc tắt data: { turbo: false }) trong form
        end
    end

    def show
        @user = User.find params[:id]
        
    end

    def edit
        @users = User.find params[:id]
    end

    def update
        @users = User.find params[:id]
        if @users.update users_params
            flash[:success] = "Cập nhật user thành công"
            redirect_to users_path
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @users = User.find params[:id]
        @users.destroy
        flash[:success] = "Xóa user thành công"
        redirect_to users_path
    end

    private
    def users_params
        params.require(:user).permit :name, :email, :password, :password_confirmation
    end
end
