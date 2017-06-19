class Album < ApplicationRecord
  has_many :photos, dependent: :destroy
  validates :title, presence: true, length: {minimum: 5}
  belongs_to :collection
end
