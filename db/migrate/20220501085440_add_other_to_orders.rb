class AddOtherToOrders < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :other, :string
  end
end
