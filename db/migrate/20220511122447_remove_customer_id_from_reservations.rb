class RemoveCustomerIdFromReservations < ActiveRecord::Migration[6.1]
  def change
    remove_column :reservations, :customer_id, :integer
  end
end
