class CartItem < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0 }

  validate :check_stock

  def check_stock
    return unless quantity && product

    if quantity > product.quantity
      errors.add(:quantity, :exceed_stock)
    end
  end
end
