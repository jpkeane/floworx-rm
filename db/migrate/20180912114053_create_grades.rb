class CreateGrades < ActiveRecord::Migration[5.2]
  def change
    create_table :grades do |t|
      t.string :slug, null: false, limit: 100
      t.string :name, null: false, limit: 100
      t.integer :level

      t.timestamps
    end
  end
end
