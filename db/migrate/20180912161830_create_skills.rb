class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :slug, null: false, length: 100
      t.string :name, null: false, length: 100

      t.timestamps
    end
  end
end
