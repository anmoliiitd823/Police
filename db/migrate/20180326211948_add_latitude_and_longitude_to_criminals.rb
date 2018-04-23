class AddLatitudeAndLongitudeToCriminals < ActiveRecord::Migration[5.1]
  def change
    add_column :criminals, :latitude, :float
    add_column :criminals, :longitude, :float
  end
end
