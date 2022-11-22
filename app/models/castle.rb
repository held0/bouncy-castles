class Castle < ApplicationRecord
  belongs_to :user

  has_many_attached :photos
  # has_many :reviews
end
