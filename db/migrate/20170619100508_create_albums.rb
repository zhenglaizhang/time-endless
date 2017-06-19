class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :title
      t.string :description
      t.references :collection, foreign_key: true

      t.timestamps
    end
  end
end
