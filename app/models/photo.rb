class Photo < ApplicationRecord
  validates :name, presence: true, length: {minimum: 5}
  belongs_to :album

  mount_uploader :photo, PhotoUploader
end
