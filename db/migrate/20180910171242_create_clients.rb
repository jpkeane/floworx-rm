class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string :slug, null: false, limit: 5, index: true
      t.string :name, null: false, limit: 100
      t.string :code, null: false, limit: 5

      t.timestamps
    end
  end
end
