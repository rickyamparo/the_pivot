class Item < ApplicationRecord
  validates :title, presence: true, uniqueness: true
  validates :description, :price, :image, :category_id, presence: true

  belongs_to :category
  has_many :orders_items
  has_many :orders, through: :orders_items

  enum status: %w(active retired)

  def formatted_price
    sprintf('%.2f', price)
  end

end
