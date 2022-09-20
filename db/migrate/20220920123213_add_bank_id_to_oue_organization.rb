class AddBankIdToOueOrganization < ActiveRecord::Migration[7.0]
  def change
    add_column :oue_organizations, :bank_id, :integer
    add_index :oue_organizations, :bank_id
  end
end
