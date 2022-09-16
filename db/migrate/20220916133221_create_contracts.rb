class CreateContracts < ActiveRecord::Migration[7.0]
  def change
    create_table :contracts do |t|
      t.string :num
      t.string :date_create
      t.references :organization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
