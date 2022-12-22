class CartItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  def total_price
    self.product.price.to_s.to_d * self.quantity.to_s.to_d
  end
end
