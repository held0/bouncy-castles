class Castle < ApplicationRecord
  belongs_to :user

  # include PgSearch::Model
  # multisearchable against: [:name, :location]

  has_many_attached :photos
  # has_many :reviews
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
