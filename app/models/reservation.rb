class Reservation < ApplicationRecord



  def self.reservations_after_three_month
    reservations = Reservation.all.where("day >= ?", Date.current >>1).where("day < ?",Date.current >>3).order(day: :desc)
    reservation_data = []
    reservations.each do |reservation|
      reservations_hash = {}
      reservations_hash.merge!(day: reservation.day.strftime("%Y-%m-%d"),time: reservation.time)
      reservation_data.push(reservations_hash)
  end
  reservation_data
  end

  belongs_to :order

  enum reservation_status: {ok: 0, ng: 1}

  #validate :date_one_month_start
  #validate :date_two_month_end

  private

  def date_one_month_start
    errors.add(:day, "1ヶ月以内の予約はできません") if (Date.current << 1) < day
  end


  def date_two_month_end
    errors.add(:day, "は２ヶ月先以降の日付は選択できません") if (Date.current >> 2) < day
  end
end
