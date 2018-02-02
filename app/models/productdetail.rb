class ProductDetail < ApplicationRecord
  validates :product_id, presence: true
  validates :quantity, presence: true
  validates :sku, presence: true
  validates :price, presence: true
  validates :sale_price, presence: true
  validates :sale_start_at, presence: true
  validates :sale_end_at, presence: true
  validates :new_condition, presence: true
  validates :status, presence: true

end
