class Review < ApplicationRecord
  RATING = [1, 2, 3, 4, 5].freeze

  belongs_to :restaurant
  validates :content, presence: true, length: { minimum: 10 }
  validates :rating, inclusion: { in: RATING}
end
