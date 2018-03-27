class CreateStations < ActiveRecord::Migration[5.1]
  def change
    create_table :stations do |t|
      t.string :name
      t.references :prefecture, foreign_key: true
    end
  end
end
