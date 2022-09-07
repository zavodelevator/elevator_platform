class CreateSends < ActiveRecord::Migration[7.0]
  def change
    create_table :sends do |t|
      t.string :sends

      t.timestamps
    end
  end
end
