class CreateOrders < ActiveRecord::Migration[7.0]
  def change
    create_table :orders do |t|
      t.string :date_send
      t.string :params_for_send
      t.string :order_status
      t.string :ful_price
      t.string :notes

      t.timestamps
    end
  end
end
