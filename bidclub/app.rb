require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/task")

get("/") do
  erb(:index)
end

get('/arts') do
  @art = Art.all()
  erb(:art)
end

get('/arts/new') do
  erb(:art_form)
end

post("/arts") do
  name = params.fetch("name")
  price = params.fetch("price")
  purchaser = params.fetch("purchaser")
  art = Art.new(name, price, purchaser)
  art.save()
  erb(:success)
end

get('/arts/:id') do
  @art = Art.find(params.fetch("id"))
  erb(:art)
end