class PopulateController < ApplicationController
  def load
  	uri = URI.parse("http://api.seatgeek.com/2/events?taxonomies.name=music_festival&per_page=10000")
 
		http = Net::HTTP.new(uri.host, uri.port)
		request = Net::HTTP::Get.new(uri.request_uri)
		 
		response = http.request(request)
		 
		if response.code == "200"
		  result = JSON.parse(response.body)
		  
		  result["events"].each do |event|
		  		Event.create!(title: event["title"], city: event["venue"]["city"], state: event["venue"]["state"], country: event["venue"]["country"], url: event["url"], start_datetime_local: event["datetime_local"])
		  end
		else
		  puts "ERROR!!!"
		end
  end
end