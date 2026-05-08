class Cart < ApplicationRecord
  has_many :cart_items, dependent: :destroy
  has_many :products, through: :cart_items, source: :product

  def add_product(product)
    return false if product.quantity <= 0

    item = cart_items.find_or_initialize_by(product_id: product.id)
    if item.new_record?
      item.quantity = 1
    else
      item.quantity += 1
    end

    item.save
  end
end
