class AddCoordinatesToWorkSpaces < ActiveRecord::Migration[7.0]
  def change
    add_column :work_spaces, :latitude, :float
    add_column :work_spaces, :longitude, :float
  end
end
