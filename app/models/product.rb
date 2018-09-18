class Product < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  validates :description, presence: true
  validates :price, presence: true
  validates :price, numericality: { only_decimal: true }
  validates :price, numericality: { greater_than: 0 }

  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :product_categories
  has_many :categories, through: :product_categories
  has_many :carted_products
  has_many :orders, through: :carted_products
  
  def is_discounted?
    price < 345
  end

  def tax 
    price * 0.09
  end

  def total
    price + tax
  end
end
