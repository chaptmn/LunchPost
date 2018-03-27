class CreateLunchPosts < ActiveRecord::Migration[5.1]
  def change
    create_table :lunch_posts do |t|
      t.string :shop_name
      t.string :title, null: false
      t.integer :price, null: false
      t.string :image_path, null: false
      t.boolean :is_active, null: false, default: true
      t.references :prefecture, foreign_key: true
      t.references :station, foreign_key: true
      t.references :user, foreign_key: true
    end
  end
end
