class CheckoutMailer < ApplicationMailer
    def create
        @user = params[:user]
        @checkouts = params[:checkout]
    
        attachments.inline['logo.png'] = File.read("#{Rails.root}/app/assets/images/logo.png")
        
        mail to: @user.email,
        subject: "Đặt hàng thành công"
    end
end
