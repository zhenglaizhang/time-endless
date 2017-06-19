class Album < ApplicationRecord
  validates :title, presence: true, length: {minimum: 5}
  has_many :photos, dependent: :destroy

  # sets up an Active Record association
  belongs_to :collection
end
