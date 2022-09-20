class AddWorkerIdToOueOrganization < ActiveRecord::Migration[7.0]
  def change
    add_column :oue_organizations, :worker_id, :integer
    add_index :oue_organizations, :worker_id
  end
end
