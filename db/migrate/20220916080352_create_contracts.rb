class CreateContracts < ActiveRecord::Migration[7.0]
  def change
    create_table :contracts do |t|
      t.string :number
      t.string :data_create

      t.timestamps
    end
  end
end
