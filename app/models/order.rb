class Order < ApplicationRecord
  validates :billing_name, :billing_address, presence: true
  validates :shipping_name, :shipping_address, presence: true

  belongs_to :user
  has_many :product_lists, dependent: :destroy
  has_secure_token  :token

  after_commit :send_order_confirmation_email, on: :create

  def to_param
    token
  end

  def set_payment_with!(method)
    update!(payment_method: method)
  end

  def pay!
    update!(is_paid: true)
  end

  private

  def send_order_confirmation_email
    OrderMailer.notify_order_placed(self).deliver_later
  end
end
