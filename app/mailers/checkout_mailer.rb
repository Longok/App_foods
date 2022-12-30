class CheckoutMailer < ApplicationMailer
    def create
        @user = params[:user]
        @checkouts = params[:checkout]
    
        attachments.inline['logo.png'] = File.read("#{Rails.root}/app/assets/images/logo.png")

        if @checkouts.cart.cart_items.product.image.attached? 
            @filename = @checkouts.cart.cart_items.product.to_s + @checkouts.cart.cart_items.product.image.filename.extension_with_delimiter
            if ActiveStorage::Blob.service.respond_to?(:path_for)
              attachments.inline[@filename] = File.read(ActiveStorage::Blob.service.send(:path_for, @checkouts.cart.cart_items.product.image.key))
            elsif ActiveStorage::Blob.service.respond_to?(:download)
              attachments.inline[@filename] = @checkouts.cart.cart_items.product.image.download
            end
        end

        mail to: @user.email,
        subject: "Đặt hàng thành công"
    end
end
