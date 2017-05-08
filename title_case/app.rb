require('sinatra')
require('sinatra/reloader')

get('/') do
  erb(:index)
end

get('/title') do
  @title = params.fetch('title').title_case()
  erb(:title)
end