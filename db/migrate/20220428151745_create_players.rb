class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.string :name,null: false
      t.string :instrument,null: false
      t.string :introduction,null: false

      t.timestamps
    end
  end
end
