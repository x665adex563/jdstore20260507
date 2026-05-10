class Order < ApplicationRecord
  validates :billing_name, :billing_address, presence: true
  validates :shipping_name, :shipping_address, presence: true

  belongs_to :user
  has_many :product_lists, dependent: :destroy
  has_secure_token  :token

  after_commit :send_order_confirmation_email, on: :create
  include AASM

  def to_param
    token
  end

  def set_payment_with!(method)
    update!(payment_method: method)
  end

  def pay!
    update!(is_paid: true)
  end

  aasm do
    state :order_placed, initial: true
    state :paid
    state :shipping
    state :shipped
    state :cancel_requested
    state :order_cancelled
    state :good_returned

    event :make_payment, after_commit: :pay! do
      transitions from: :order_placed, to: :paid
    end

    event :ship do
      transitions from: :paid,         to: :shipping
    end

    event :deliver do
      transitions from: :shipping,     to: :shipped
    end

    event :return_good do
      transitions from: :shipped,      to: :good_returned
    end

    event :request_cancel do
      transitions from: [:order_placed, :paid], to: :cancel_requested
    end

    event :cancel_order do
      transitions from: [:order_placed, :paid, :cancel_requested], to: :order_cancelled
    end
  end

  private

  def send_order_confirmation_email
    OrderMailer.notify_order_placed(self).deliver_later
  end
end
