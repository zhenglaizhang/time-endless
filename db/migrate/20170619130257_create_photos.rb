class CreatePhotos < ActiveRecord::Migration[5.1]
  def change
    create_table :photos do |t|
      t.string :name
      t.text :description
      t.string :path
      t.datetime :date_time_original
      t.integer :width
      t.integer :height
      t.float :exposure_time
      t.float :f_number
      t.string :model
      t.string :make
      t.string :copyright
      t.integer :iso_speed_ratings
      t.float :aperture_value
      t.float :max_aperture_value
      t.float :focal_length
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
