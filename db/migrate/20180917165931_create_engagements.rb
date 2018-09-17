class CreateEngagements < ActiveRecord::Migration[5.2]
  def change
    create_table :engagements do |t|
      t.string :slug, null: false
      t.string :code, null: false
      t.string :name, null: false
      t.references :project, foreign_key: true
      t.references :role, foreign_key: true
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
