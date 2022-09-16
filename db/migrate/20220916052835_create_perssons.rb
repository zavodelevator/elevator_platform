class CreatePerssons < ActiveRecord::Migration[7.0]
  def change
    create_table :perssons do |t|
      t.string :firct_name
      t.string :last_name
      t.string :father_nane
      t.string :name_for_contract
      t.string :phone
      t.string :email
      t.string :send_adress
      t.string :role

      t.timestamps
    end
  end
end
