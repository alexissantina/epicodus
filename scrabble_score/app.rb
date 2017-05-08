require('sinatra')
require('sinatra/reloader')
require('./lib/scrabble_score')

get('/') do
  erb(:index)
end

get('/score') do
  @score = params.fetch('word').scrabble_score()
  erb(:score)
end