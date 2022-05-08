class CreateOrderReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :order_reservations do |t|

      t.timestamps
    end
  end
end
