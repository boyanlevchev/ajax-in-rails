class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, length: { minimum: 5 }
end
