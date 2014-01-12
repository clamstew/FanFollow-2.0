# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	User.create!(first_name: "Andy", last_name: "Murph", email: "ok@ok.com", password: "ok123456", city: "Austin", state: "TX", country: "USA", image: "https://pbs.twimg.com/profile_images/413832274740666369/z6a_pdmx.jpeg")
  