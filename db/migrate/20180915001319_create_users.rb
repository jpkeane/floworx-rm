class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :email_address
      t.string :first_name, null: false, length: 150
      t.string :last_name, null: false, length: 150

      t.timestamps
    end
  end
end
