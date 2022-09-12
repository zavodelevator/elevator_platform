class CreateTovars < ActiveRecord::Migration[7.0]
  def change
    create_table :tovars do |t|
      t.string :name
      t.string :count
      t.string :metric
      t.string :articul
      t.string :price_rozdr
      t.string :price_opt
      t.string :price
      t.string :sklad_locate
      t.string :params_data
      t.string :time_on_sklad

      t.timestamps
    end
  end
end
