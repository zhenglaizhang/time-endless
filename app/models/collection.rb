class Collection < ApplicationRecord
  validates :title, presence: true, length: {minimum: 5}
  has_many :albums, dependent: :destroy
  mount_uploader :image, ImageUploader
end
