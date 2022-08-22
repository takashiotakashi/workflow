class CreateWorkSpaces < ActiveRecord::Migration[7.0]
  def change
    create_table :work_spaces do |t|
      t.string :name
      t.float :price
      t.string :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
