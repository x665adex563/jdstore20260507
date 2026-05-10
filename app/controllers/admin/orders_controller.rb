class Admin::OrdersController < ApplicationController
  layout "admin"

  before_action :authenticate_user!
  before_action :admin_required
  before_action :find_order, only: [:show]

  def index
    @orders = Order.order(id: :desc)
  end

  def show
    @product_lists = @order.product_lists
  end

  private

  def find_order
    @order = Order.find_by!(token: params[:token])
  end
end
