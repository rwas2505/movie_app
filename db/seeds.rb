require 'ffaker'

Movie.create!([
  {title: "Inception", year: 1998, plot: "DB within a DB within a DB within a DREAM", director: "Christopher Nolan"},
  {title: "Blow", year: 1996, plot: "George is crazy", director: "Ted Demme"},
  {title: "Catch Me if You can", year: 1998, plot: "You can't catch me, I'm the ginger bread man!", director: "Steven Spielberg"}
])

20.times do
  Actor.create!(
    first_name: FFaker::Name.first_name,
    last_name: FFaker::Name.last_name,
    known_for: FFaker::Movie.title,
    age: rand(13..100),
    gender: ['M','F'].sample
  )
end
