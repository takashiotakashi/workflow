class AddAddressToWorkSpaces < ActiveRecord::Migration[7.0]
  def change
    add_column :work_spaces, :address, :string
  end
end
