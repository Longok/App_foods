class SlidesController < ApplicationController

    def index

    end

    def new
        @slides = Slide.new
    end

    def create
        @slides = Slide.new slides_params
        if @slides.save
            flash[:success] = "Tạo slide thành công"
            redirect_to @slides
        else
            flash[:danger] = "Tạo slide thất bại"
            render :new, status: :unprocessable_entity
        end
    end

    private

    def slides_params
        params.require(:slide).permit :name, :image
    end
end
