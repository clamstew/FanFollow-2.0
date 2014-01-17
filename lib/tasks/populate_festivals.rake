

namespace :populate do

	task :festivals => :environment do
		uri = URI.parse("http://api.seatgeek.com/2/events?taxonomies.name=music_festival&per_page=10000")
 
		http = Net::HTTP.new(uri.host, uri.port)
		request = Net::HTTP::Get.new(uri.request_uri)
		 
		response = http.request(request)
		 
		if response.code == "200"
		  result = JSON.parse(response.body)
		  i = 0
		  result["events"].each do |event|
		  	title = event["title"]
		  	title = title.truncate(255)
		  	city = event["venue"]["city"]
		  	state = event["venue"]["state"]
		  	country = event["venue"]["country"]
		  	url = event["url"]
		  	url = url.truncate(255)
		  	start_datetime_local = event["datetime_local"]
		  	Event.create!(title: title, city: city, state: state, country: country, url: url, start_datetime_local: start_datetime_local, end_datetime_local: "2015-06-15 00:00:00 UTC")
		 		i += 1
		 		if i%100 == 0 
		 			puts "grabbed #{i} events"
		 		end
		  end
		else
		  puts "ERROR!!!"
		end

	end

end

