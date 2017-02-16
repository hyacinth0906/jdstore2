class Admin::OrdersController < ApplicationController
  layout "admin"

  before_action ;authenticate_user!
  before_action :admin_required

  def index
    @orders = Order.all("id DESC")
  end

  def show
    @order = Order.find(params[:id])
    @product_lists = @order.product_lists
  end
end
