class Collection < ApplicationRecord
  has_many :albums, dependent: :destory
  validates :title, presence: true, length: {minimum: 5}
end
