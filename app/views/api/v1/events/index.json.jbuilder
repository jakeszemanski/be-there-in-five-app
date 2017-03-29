json.array! @events.each do |event|
  json.id event.id
  json.title event.title
  json.description event.description
  json.location event.location
  json.picture event.picture
  json.start_time event.start_time
  json.end_time event.end_time
  json.date event.date
end