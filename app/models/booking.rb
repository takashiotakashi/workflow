class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :work_space
end
