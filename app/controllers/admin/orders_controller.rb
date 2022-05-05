class Admin::OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def order_params
    params.require(:order).permit(:address,:station,:purpose,:request,:piece,:style,:other)
  end
end
