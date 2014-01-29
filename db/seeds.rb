# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  
  # Users
  # User.create!(first_name: "Matt", last_name: "Caplan", email: "matt@matt.com", password: "ok123456", city: "New York", state: "NY", country: "USA", image: "https://scontent-b-dfw.xx.fbcdn.net/hphotos-ash3/1017258_10101014347830955_915002439_n.jpg")
  User.create!(first_name: "Andy", last_name: "Murphy", email: "andy@andy.com", password: "ok123456", city: "Austin", state: "TX", country: "USA", image: "https://scontent-b-dfw.xx.fbcdn.net/hphotos-ash3/1017258_10101014347830955_915002439_n.jpg")
  User.create!(first_name: "Greg", last_name: "Pfeffer", email: "greg@greg.com", password: "ok123456", city: "Austin", state: "TX", country: "USA", image: "https://scontent-a-dfw.xx.fbcdn.net/hphotos-ash3/1525384_704929913155_1447068983_n.jpg")
  User.create!(first_name: "Shehzan", last_name: "Devani ", email: "nasty@nasty.com", password: "ok123456", city: "Austin", state: "TX", country: "USA", image: "https://fbcdn-sphotos-d-a.akamaihd.net/hphotos-ak-ash3/882510_1778254706338_724871419_o.jpg")
  User.create!(first_name: "Kendra", last_name: "McClanahan", email: "kendra@kendra.com", password: "ok123456", city: "St Louis", state: "MI", country: "USA", image: "https://scontent-b-dfw.xx.fbcdn.net/hphotos-ash3/562831_910636909504_1820188384_n.jpg")
  User.create!(first_name: "Taylor", last_name: "Smith", email: "taylor@taylor.com", password: "ok123456", city: "Austin", state: "TX", country: "USA", image: "https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-ash3/1073965_10200950300253958_799024679_o.jpg")
  User.create!(first_name: "Emma", last_name: "L", email: "emma@emma.com", password: "ok123456", city: "Austin", state: "TX", country: "USA", image: "https://scontent-a-dfw.xx.fbcdn.net/hphotos-prn1/1526233_10101024479736535_2101446775_n.jpg")
  User.create!(first_name: "Gamble", last_name: "McAdam", email: "gamble@lumberjack.com", password: "ok123456", city: "Austin", state: "TX", country: "USA", image: "https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-prn2/1267063_10152519149455476_1464897040_o.jpg")
  User.create!(first_name: "Clay", last_name: "Stewart", email: "clay@clay.com", password: "ok123456", city: "Austin", state: "TX", country: "USA", image: "https://fbcdn-sphotos-e-a.akamaihd.net/hphotos-ak-ash3/1072602_649788227468_1573908158_o.jpg")
  User.create!(first_name: "Shaan", last_name: "Shah", email: "shaan@shaah.com", password: "ok123456", city: "Austin", state: "TX", country: "USA", image: "https://fbcdn-sphotos-g-a.akamaihd.net/hphotos-ak-ash2/819408_10151378874079699_689397579_o.jpg")
  
  # Seatgeek 



  #Events
  Event.create!(title: "Bonnaroo", city: "Manchester", state: "TN", country: "USA", url: "http://www.bonnaroo.com/", image: "http://www.bonnaroo.com/wp-content/uploads/2012/01/Screen-shot-2012-12-10-at-3.43.48-PM.png", start_datetime_local: "2014-06-12 00:00:00 UTC", end_datetime_local: "2014-06-15 00:00:00 UTC")
  Event.create!(title: "Bohemia Arts Festival", city: "Cedar Rapids", state: "IO", country: "USA", url: "http://www.bonnaroo.com/", image: "http://bohemianfestival.files.wordpress.com/2012/08/bohemian-festival-2013-1.jpg%3Fw%3D700%26h%3D394", start_datetime_local: "2014-06-12 00:00:00 UTC", end_datetime_local: "2014-06-15 00:00:00 UTC")
  Event.create!(title: "Bo Festival", city: "Manchester", state: "TN", country: "USA", url: "http://www.bonnaroo.com/", image: "http://www.bonnaroo.com/wp-content/uploads/2012/01/Screen-shot-2012-12-10-at-3.43.48-PM.png", start_datetime_local: "2014-06-12 00:00:00 UTC", end_datetime_local: "2014-06-15 00:00:00 UTC")
  Event.create!(title: "Bo'ness Real Ale Festival", city: "Bo'ness", state: "Scotland", country: "USA", url: "http://www.bonnaroo.com/", image: "http://upload.wikimedia.org/wikipedia/commons/8/82/Cuillin-mountains-scotland-backside.jpg", start_datetime_local: "2014-06-12 00:00:00 UTC", end_datetime_local: "2014-06-15 00:00:00 UTC")
  Event.create!(title: "Coachella", city: " Indio", state: "CA", country: "USA", url: "http://www.coachella.com/", image: "http://cheekychicago.com/wp-content/uploads/2013/02/coachella2.jpg", start_datetime_local: "2014-08-12 00:00:00 UTC", end_datetime_local: "2014-08-15 00:00:00 UTC")
  Event.create!(title: "Big Day Out, Syd", city: "Sydney", state: "NSW", country: "Australia", url: "http://www.google.com.au", image: "http://www.boudist.com/wp-content/uploads/2010/01/Big-Day-Out-Sydney-2010-779.jpg", start_datetime_local: "2014-08-12 00:00:00 UTC", end_datetime_local: "2014-08-15 00:00:00 UTC")
  Event.create!(title: "Big Day Out, Mel", city: "Melbourne", state: "VIC", country: "Australia", url: "http://www.google.com.au", image: "http://www.boudist.com/wp-content/uploads/2010/01/Big-Day-Out-Sydney-2010-779.jpg", start_datetime_local: "2014-08-12 00:00:00 UTC", end_datetime_local: "2014-08-15 00:00:00 UTC")
  Event.create!(title: "Big Day Out, Bris", city: "Brisbane", state: "QLD", country: "Australia", url: "http://www.google.com.au", image: "http://www.boudist.com/wp-content/uploads/2010/01/Big-Day-Out-Sydney-2010-779.jpg", start_datetime_local: "2014-08-12 00:00:00 UTC", end_datetime_local: "2014-08-15 00:00:00 UTC")
  
  # Rides
  User.find(3).rides.create!(title: "Driving My Mom's Car To 'Roo!' ", origin: "Austin", departure_time_local: "2014-06-11 00:00:00 UTC", max_seats: 4, image: "http://4.bp.blogspot.com/-3bPQglKDLO4/Tx-esRlrVbI/AAAAAAAAXRI/nX6_leXzwzY/s640/vw-bus-stoled-35-years-ago-returns-to-owner-13067_1.jpg", price_per_seat: "38", event_id: 1, user_id: 3)
  User.find(4).rides.create!(title: "Kendra's Party Van!", origin: "Austin", departure_time_local: "2014-06-10 00:00:00 UTC", max_seats: 3, image: "http://www.conversionvanland.com/new_vans/images/links/Custom_Luxury_Conversion_Van_11-15-2007_021.jpg", price_per_seat: "89", event_id: 5, user_id: 4)
  User.find(4).rides.create!(title: "Kendra's Party Van!", origin: "Austin", departure_time_local: "2014-06-10 00:00:00 UTC", max_seats: 3, image: "http://www.conversionvanland.com/new_vans/images/links/Custom_Luxury_Conversion_Van_11-15-2007_021.jpg", price_per_seat: "89", event_id: 1, user_id: 4)
  User.find(7).rides.create!(title: "Gamble's Pickup Truck to Roo!", origin: "Austin", departure_time_local: "2014-06-10 00:00:00 UTC", max_seats: 3, image: "http://image.classictrucks.com/f/tech/1002clt_2010_classic_trucks_buyers_guide/27434863/1002clt_03_o%2B2010_classic_trucks_buyers_guide%2B1970_pickup_truck.jpg", price_per_seat: "22", event_id: 1, user_id: 7)

  # Seats
  User.find(5).seats.create!(ride_id:1) 
  User.find(3).seats.create!(ride_id:4) 
  User.find(2).seats.create!(ride_id:3)
  User.find(8).seats.create!(ride_id:1)



