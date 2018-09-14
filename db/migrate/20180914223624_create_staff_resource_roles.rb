class CreateStaffResourceRoles < ActiveRecord::Migration[5.2]
  def change
    create_table :staff_resource_roles do |t|
      t.references :staff_resource, foreign_key: true
      t.references :role, foreign_key: true
      t.integer :level

      t.timestamps
    end
  end
end
