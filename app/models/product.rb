class Product < ApplicationRecord
  belongs_to :category
  has_one_attached :image

  validates :name, presence: true, length: { minimum: 6 }
  validates :price, presence: true
  validates :category_id, presence: true
  validates :image, presence: true

end
