class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :work_space

  validates :start_date, :end_date, presence: true
  validate :amount_due
end
