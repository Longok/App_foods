class Cart < ApplicationRecord
    has_many :cart_items
    has_many :products, through: :cart_items

    def total
      cart_items.sum { |cart_item| cart_item.total_price }
    end

    def total_quantity
      quantity = 0
      self.cart_items.each do |cart_item|
        quantity += cart_item.quantity
      end
      return quantity
    end

    
    def add_product(product)
      current_item = cart_items.find_by product_id: (product)
      if current_item 
          current_item.quantity += 1
      else
          current_item = cart_items.build(:product_id => product.id, :quantity => 1)
      end
      current_item

    end
end
