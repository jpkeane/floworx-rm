class CreateStaffResources < ActiveRecord::Migration[5.2]
  def change
    create_table :staff_resources do |t|
      t.string :slug, null: false
      t.string :first_name, null: false, length: 150
      t.string :last_name, null: false, length: 150
      t.string :display_name, length: 150
      t.string :email_address
      t.string :bio_url
      t.references :grade, foreign_key: true

      t.timestamps
    end
  end
end
