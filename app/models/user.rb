class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings
  has_many :work_spaces

  validates :first_name, :last_name, :email, presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
