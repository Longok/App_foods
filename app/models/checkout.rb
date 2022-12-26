class Checkout < ApplicationRecord
  belongs_to :user
  belongs_to :cart

  PAYMENT_TYPE = ["Thanh toán Momo", "Thanh toán Zalo-Pay", "Thanh Toán VNPay", "Thanh toán tiền mặt"]
  validates :phone, presence: true, length: { minimum: 9, maximum: 10, message: "Số điện thoại phải 10 ký tự"}
  validates :address, presence: true, length: { minimum: 10 }
  validates :payment_type, presence: true, :inclusion => PAYMENT_TYPE
  validates :user_id, presence: true
  validates :cart_id, presence: true

end
