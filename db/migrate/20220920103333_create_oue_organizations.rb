class CreateOueOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table :oue_organizations do |t|
      t.string :name
      t.string :short_name
      t.string :ederpou
      t.string :ipn
      t.string :type_rent
      t.string :adress
      t.string :factic_adress
      t.string :send_adress
      t.string :phone
      t.string :mail

      t.timestamps
    end
  end
end
