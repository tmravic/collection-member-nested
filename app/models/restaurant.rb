class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # this creates restaurant.reviews
end
