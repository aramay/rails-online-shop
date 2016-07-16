class Product < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :image, presence: true
  validates :quantity, presence: true

  has_many :category_products
  has_many :categories, through: :category_products
  has_many :order_items
  
  belongs_to :category

  # default_scope { where(active: true) }

end
