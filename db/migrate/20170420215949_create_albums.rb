class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :name, null: false
      t.integer :band_id, null: false
      t.string :record_type, null: false

      t.timestamps
    end
    add_index :albums, :band_id
  end
end
