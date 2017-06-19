class Collection < ApplicationRecord
  has_many :albums, dependent: :destroy
  validates :title, presence: true, length: {minimum: 5}
end
