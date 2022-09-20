class CreateWorkers < ActiveRecord::Migration[7.0]
  def change
    create_table :workers do |t|
      t.string :first_name
      t.string :last_name
      t.string :rather_name
      t.string :name_for_contract
      t.string :phone
      t.string :email
      t.string :role

      t.timestamps
    end
  end
end
