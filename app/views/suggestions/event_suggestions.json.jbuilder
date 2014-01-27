json.array!(@suggestions) do |event|
	json.extract! event, :title, :id, :city, :state
end
