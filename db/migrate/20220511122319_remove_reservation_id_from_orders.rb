class RemoveReservationIdFromOrders < ActiveRecord::Migration[6.1]
  def change
    remove_column :orders, :reservation_id, :integer
  end
end
