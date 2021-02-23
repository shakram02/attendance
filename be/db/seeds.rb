# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ATTENDEE_COUNT = 10
ATTENDANCE_COUNT = 15
def init_attendees
  ATTENDEE_COUNT.times do |attendee|
    Attendee.create(
      name: "Attendee #{attendee}"
    )
  end

  puts "#{ATTENDEE_COUNT} attendees added"

  15.times do |attendance|
    Attendance.create(
      start: DateTime.now,
      attendee_id: attendance % ATTENDEE_COUNT
    )
  end
  puts "#{ATTENDANCE_COUNT} attendances added"
end

init_attendees
