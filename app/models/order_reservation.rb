class OrderReservation < ApplicationRecord

  class OrderReservation
    include ActiveModel:: Model
    include ActiveRecord::AttributeAssignment
    attr_accessor :order, :station, :purpose, :request, :piece, :style, :total_price, :reservation_id, :other, :customer_id, :address
  end

  def save
    reservation = Reservation.create(day:day, time:time)
    Order.create(customer_id:customer_id, address:address, purpose:purpose, request:request, piece:piece, style:style, total_price:total_price, reservation_id:reservation_id, other:other)
  end

end
