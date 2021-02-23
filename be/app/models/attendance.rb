class Attendance < ApplicationRecord
  belongs_to :attendee
  validates_presence_of :start
end
