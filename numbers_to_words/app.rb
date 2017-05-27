require('sinatra')
require('sinatra/reloader')
require('./lib/numbers_to_words')

get('/') do
  erb(:index)
end

get('/number_words') do
  @number_words = params.fetch('number').to_i.numbers_to_words()
  erb(:number_words)
end