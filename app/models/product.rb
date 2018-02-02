class Product < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :category, presence: true
  validates :brand, presence: true
  # validates :variants, presence: true

end
