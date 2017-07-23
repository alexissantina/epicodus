require("sinatra")
require("sinatra/reloader")
also_reload("lib/**.rb")
require_relative("lib/art")
#require("./lib/task")

get("/") do
  erb(:index)
end

get('/art') do
  @arts = Art.all()
  erb(:arts)
end

get('/art/new') do
  erb(:arts_form)
end

post("/arts") do
  name = params.fetch("name")
  artist = params.fetch("artist")
  price = params.fetch("price")
#  purchaser = params.fetch("purchaser")
  art = Art.new(name, artist, price)
  art.save()
  erb(:success)
end

get('/arts/:id') do
  @art = Art.find(params.fetch("id"))
  erb(:art)
end