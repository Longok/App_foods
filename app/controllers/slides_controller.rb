class SlidesController < ApplicationController
    before_action :login_admin, only: [:new, :create, :update, :destroy]

    def index
        @slides = Slide.all
    end

    def new
        @slides = Slide.new
    end

    def create
        @slides = Slide.new slides_params
        if @slides.save
            flash[:success] = "Tạo slide thành công"
            redirect_to slides_path
        else
            flash[:danger] = "Tạo slide thất bại"
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @slides = Slide.find params[:id]
    end

    def update
        @slides = Slide.find params[:id]
        if @slides.update slides_params
            flash[:success] = "Cập nhật slide thành công"
            redirect_to slides_path
        else
            render :edit, status: :unprocessable_entity
        end
    end

    def destroy
        @slides = Slide.find params[:id]
        @slides.destroy
        flash[:success] = "Xóa slide thành công"
        redirect_to slides_path
    end

    private

    def slides_params
        params.require(:slide).permit :name, :image
    end
end
