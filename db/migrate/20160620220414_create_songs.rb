class CreateSongs < ActiveRecord::Migration
  def change
    create_table :songs do |t|
      t.string :title
      t.references :band, index: true, foreign_key: true
      t.integer :rating

      t.timestamps null: false
    end
  end
end
