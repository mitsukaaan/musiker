class AddTrainPriceToOrder < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :train_price, :integer
  end
end
