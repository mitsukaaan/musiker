class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id
      t.date :date,null: false
      t.string :time,null:false
      t.string :address,null: false
      t.string :station,null: false
      t.string :from_station
      t.string :purpose,null: false
      t.string :request
      t.string :piece,null: false
      t.string :style,null: false

      t.timestamps
    end
  end
end
