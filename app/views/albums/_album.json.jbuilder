json.extract! album, :id, :title, :description, :collection_id, :created_at, :updated_at
json.url album_url(album, format: :json)
