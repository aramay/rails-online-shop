class Product < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :image, presence: true
  validates :quantity, presence: true
  validates :category_id, presence: true

  belongs_to :category
  has_many :categories
end
