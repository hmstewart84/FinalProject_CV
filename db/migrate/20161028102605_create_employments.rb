class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.string :name
      t.string :location
      t.string :title
      t.date :date
      t.references :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
