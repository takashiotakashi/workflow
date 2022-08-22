class WorkSpace < ApplicationRecord
  belongs_to :user
  has_many :bookings

  validates :name, :price, presence: true
  validates :description
end
