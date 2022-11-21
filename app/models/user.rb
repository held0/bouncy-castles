class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings, dependent: :destroy
  # The users castle (owner)
  has_many :castles, dependent: :destroy
  # The castles a user booked
  has_many :castles, through: :bookings, dependent: :destroy


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :email, uniqueness: true
end
