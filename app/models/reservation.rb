class Reservation < ApplicationRecord
  def self.reservations_after_three_month
    reservations = Reservation.all.where("day >= ?", Date.current >>1).where("day < ?",Date.current >>3).order(day::desc)
    reservation_data = []
    reservationseach do |reservation|
      reservations_hash = {}
      reservations_hash.merge!(day: reservation.day.strftime("%Y-%m-%d"),time: reservation.time)
      reservation_data.push(reservations_hash)
  end
  reservation_data
  end
end
