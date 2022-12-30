# Preview all emails at http://localhost:3000/rails/mailers/checkout_mailer
class CheckoutMailerPreview < ActionMailer::Preview
    def create
        CheckoutMailer.with(user: User.find_by(params[:id]), checkout: Checkout.find_by(params[:id])).create
    end 
end
