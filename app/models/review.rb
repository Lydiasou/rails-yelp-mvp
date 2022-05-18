class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true }
  # RATING = (0..5).to_a
  validates :rating, inclusion: { in: (0..5) }
end
