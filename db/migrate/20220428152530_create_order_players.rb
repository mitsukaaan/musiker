class CreateOrderPlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :order_players do |t|
      t.integer :order_id
      t.integer :player_id

      t.timestamps
    end
  end
end
