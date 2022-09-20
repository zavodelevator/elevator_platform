class CreateBanks < ActiveRecord::Migration[7.0]
  def change
    create_table :banks do |t|
      t.string :number_caunt_bank
      t.string :mfo
      t.string :name_and_rquesit_bank

      t.timestamps
    end
  end
end
