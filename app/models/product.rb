class Product < ApplicationRecord
  has_many :categories
  validates :title, :price, :stock_quantity, presence: true
end
