class Admin::OrdersController < ApplicationController

  def index
    @orders = Order.all
  end

  def show
    @order = Order.find(params[:id])
  end

  def calendar
    @reservations = Reservation.all.where("day >= ?", Date.current).where("day < ?", Date.current >> 2).order(day: :desc)
  end



  private

  def order_params
    params.require(:order).permit(:address,:station,:purpose,:request,:piece,:style,:other)
  end



end
