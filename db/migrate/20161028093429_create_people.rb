class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.text :about
      t.string :location
      t.string :email
      t.integer :phone

      t.timestamps null: false
    end
  end
end
