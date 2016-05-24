json.array!(@meetups) do |meetup|
  json.extract! meetup, :id, :title, :description, :date
  json.url meetup_url(meetup, format: :json)
end
