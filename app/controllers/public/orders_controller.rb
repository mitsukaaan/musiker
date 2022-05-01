class Public::OrdersController < ApplicationController

    def attention
    end

    def new
        @customer = current_customer
        @reservations = Reservation.all.where("day >= ?", Date.current).where("day < ?", Date.current >> 2).order(day: :desc)
    end
end
