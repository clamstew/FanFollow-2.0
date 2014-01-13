# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

	User.create!(first_name: "Andy", last_name: "Murph", email: "2323d@ok.com", password: "ok123456", city: "Austin", state: "TX", country: "USA", image: "https://pbs.twimg.com/profile_images/413832274740666369/z6a_pdmx.jpeg")
	User.create!(first_name: "Greg", last_name: "Pfeffer", email: "o23d23d@ok2.com", password: "ok123456", city: "Austin", state: "TX", country: "USA", image: "https://scontent-a-dfw.xx.fbcdn.net/hphotos-ash3/1525384_704929913155_1447068983_n.jpg")
  Event.create!(title: "Bonnaroo", city: "Manchester", state: "TN", country: "USA", url: "http://www.bonnaroo.com/", image: "http://www.bonnaroo.com/wp-content/uploads/2012/01/Screen-shot-2012-12-10-at-3.43.48-PM.png", start_datetime_local: "2014-06-12 00:00:00 UTC", end_datetime_local: "2014-06-15 00:00:00 UTC")
  Event.create!(title: "Boootiful", city: "Wherever", state: "TX", country: "USA", url: "http://www.bonnaroo.com/", image: "http://feminspire.com/wp-content/uploads/2012/07/Festival-crowd1.jpeg", start_datetime_local: "2014-08-12 00:00:00 UTC", end_datetime_local: "2014-08-15 00:00:00 UTC")
  Event.create!(title: "Big Day Out", city: "Sydney", state: "NSW", country: "Australia", url: "http://www.google.com.au", image: "http://www.boudist.com/wp-content/uploads/2010/01/Big-Day-Out-Sydney-2010-779.jpg", start_datetime_local: "2014-08-12 00:00:00 UTC", end_datetime_local: "2014-08-15 00:00:00 UTC")