class Account::OrdersController < ApplicationController
  def index
    @orders = current_user.orders.order(create_at: :desc)
  end
end
