class Collection < ApplicationRecord
  has_many :albums
  validates :title, presence: true, length: {minimum: 5}
end
