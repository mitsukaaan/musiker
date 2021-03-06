class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.string :address,null: false
      t.string :station,null: false
      t.string :from_station
      t.integer :purpose,null: false
      t.string :request
      t.integer :piece,null: false
      t.integer :style,null: false
      t.integer :total_price,null: false
      t.integer :reservation_id
      t.integer :request_price
      t.integer :payment,null: false

      t.timestamps
    end
  end
end
