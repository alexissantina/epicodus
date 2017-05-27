require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/task")

get("/") do
  erb(:index)
end

get('/art') do
  @art = Art.all()
  erb(:art)
end

get('/art/new') do
  erb(:art_form)
end

post("/art") do
  name = params.fetch("name")
  price = params.fetch("price")
  purchaser = params.fetch("purchaser")
  art = Art.new(name, price, purchaser)
  art.save()
  erb(:success)
end

get('/art/:id') do
  @art = Art.find(params.fetch("id"))
  erb(:art)
end