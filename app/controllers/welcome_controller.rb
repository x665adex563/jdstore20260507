class WelcomeController < ApplicationController
  def index
    @products = Product.all.order(created_at: :desc).limit(4)
  end
end
