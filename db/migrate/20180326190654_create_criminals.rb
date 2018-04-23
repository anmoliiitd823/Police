class CreateCriminals < ActiveRecord::Migration[5.1]
  def change
    create_table :criminals do |t|
      t.string :first_name
      t.string :second_name
      t.string :identification_mark
      t.text :location_of_crime
      t.text :address
      t.float :height
      t.float :weight
      t.text :description
      t.string :gender
      t.integer :age

      t.timestamps
    end
  end
end
