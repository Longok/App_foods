class Product < ApplicationRecord
  belongs_to :category
  has_many :cart_items
  has_many :carts, through: :cart_items
  has_one_attached :image

  validates :name, presence: true, uniqueness: true, length: { minimum: 6 }
  validates :price, presence: true
  validates :category_id, presence: true

end
