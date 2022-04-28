class CreateCalendars < ActiveRecord::Migration[6.1]
  def change
    create_table :calendars do |t|
      t.date :date,null: false
      t.string :time,null: false
      t.datetime :start_time,null: false

      t.timestamps
    end
  end
end
