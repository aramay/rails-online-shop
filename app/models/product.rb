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

  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  private

  def ensure_not_referenced_by_any_line_item
      if line_items.empty?
          return true
      else
          errors.add(:base, 'Line Items present')
          return false
      end

  end


  # default_scope { where(active: true) }

end
