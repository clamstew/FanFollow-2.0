

namespace :populate do

	task :festivals => :environment do

		current_event_count = Event.count
		grab_uri = "http://api.seatgeek.com/2/events?taxonomies.name=music_festival&per_page=10000"
		uri = URI.parse(grab_uri)
 
		http = Net::HTTP.new(uri.host, uri.port)
		request = Net::HTTP::Get.new(uri.request_uri)
		 
		response = http.request(request)
		 
		if response.code == "200"
		  result = JSON.parse(response.body)

		  puts "Grabbed #{result["events"].length} events by #{grab_uri}"

		  result["events"].each_with_index { |event, index|
		  	title = event["title"]
		  	title = title.truncate(255)
		  	city = event["venue"]["city"]
		  	state = event["venue"]["state"]
		  	country = event["venue"]["country"]
		  	url = event["url"]
		  	url = url.truncate(255)
		  	start_datetime_local = event["datetime_local"]
		  	Event.where(title: title, city: city, state: state, country: country, url: url, start_datetime_local: start_datetime_local).first_or_create
		 		if index%100 == 0 
		 			puts "Processed #{index} events"
		 		end
		  }

		else
		  puts "ERROR!!!"
		end

		new_event_count = Event.count
		new_events = new_event_count - current_event_count 
		puts "created #{new_events} new events"

	end

end

