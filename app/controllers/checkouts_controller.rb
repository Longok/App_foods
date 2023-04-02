class CheckoutsController < ApplicationController

    def index
        # @checkouts = Checkout.all.order("id DESC")
        @pagy, @checkouts = pagy(Checkout.all.order("id DESC"), items: 15)
    end

    def new
        @cart_items = CartItem.all
        cart = Cart.find_by id: params[:id]
        @checkouts = Checkout.new
    end

    def create
        cart = current_cart
        @checkouts = Checkout.create checkouts_params
        @checkouts.user_id = current_user.id

        if @checkouts.save
            CheckoutMailer.with(user: current_user, checkout: @checkouts).create.deliver_now
            session[:cart_id] = nil
            flash[:success] = "Thanh toán thành công"
            redirect_to checkouts_success_path
        else
            flash[:danger] = "Thanh toán thất bại"
            render :new, status: :unprocessable_entity
        end
    end

    def show
        @cart = Cart.find_by id: params[:cart_id]
        @checkout = Checkout.find_by id: params[:id]
    end


    def success

    end

    private
    def checkouts_params
        params.require(:checkout).permit :phone, :address, :note, :user_id, :cart_id, :payment_type
    end
end
