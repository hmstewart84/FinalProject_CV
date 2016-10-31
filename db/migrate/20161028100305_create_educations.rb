class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :name
      t.string :location
      t.date :date
      t.string :subject
      t.references :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
