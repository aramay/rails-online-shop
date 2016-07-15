class Product < ActiveRecord::Base
  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :image, presence: true
  validates :quantity, presence: true
  validates :category_id, presence: true

  has_and_belongs_to_many :categories

end
