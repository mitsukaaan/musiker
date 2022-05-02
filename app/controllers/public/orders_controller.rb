class Public::OrdersController < ApplicationController

    def attention
    end

    def new
        @order = Order.new
        @reservations = Reservation.all.where("day >= ?", Date.current).where("day < ?", Date.current >> 2).order(day: :desc)
    end

    def confirm
        @order = Order.new(order_params)
         if params [:order][:style] ="vn+vn"
             @price = 15000
         elsif params [:order][:style] = "vn+vn+pf"
             @price = 20000
         else params [:order][:style] = "vn+vn+va+vc"
             @price = 25000
         end
    end

    private
    def order_params
        params.require(:order).permit(:customer_id,:last_name,:first_name,:date,:time,:address,:station,:style,:request,:piece,:other,:purpose)
    end
end
