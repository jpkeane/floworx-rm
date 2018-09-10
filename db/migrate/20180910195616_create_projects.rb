class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :slug, null: false, limit: 11, index: true
      t.string :name, null: false, limit: 100
      t.string :code, null: false, limit: 5, index: true
      t.references :client, foreign_key: true

      t.timestamps
    end
  end
end
