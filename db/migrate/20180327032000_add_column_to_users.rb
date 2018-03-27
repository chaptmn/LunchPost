class AddColumnToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name, :string, null: false
    add_column :users, :image_path, :string, null: false
    add_reference :users, :prefecture, foreign_key: true 
    add_reference :users, :station, foreign_key: true 
  end
end
