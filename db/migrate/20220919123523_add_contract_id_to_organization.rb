class AddContractIdToOrganization < ActiveRecord::Migration[7.0]
  def change
    add_column :organizations, :contract_id, :integer
    add_index :organizations, :contract_id
  end
end
