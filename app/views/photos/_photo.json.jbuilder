json.extract! photo, :id, :name, :description, :path, :date_time_original, :width, :height, :exposure_time, :f_number, :model, :make, :copyright, :iso_speed_ratings, :aperture_value, :max_aperture_value, :focal_length, :album_id, :created_at, :updated_at
json.url photo_url(photo, format: :json)
