require('sinatra')
require('sinatra/reloader')
require('./lib/definitions')
require('./lib/words')
also_reload('./lib/**/*.rb')

get('/') do
  @words = Word.all()
  erb(:index)
end

get('/word_form') do
  erb(:word_form)
end

post('/word_add') do
  word = params.fetch('word')
  @word = Word.new({:word => word})
  @word.save()
  @words = Word.all()
  erb(:index)
end

get('/word/:id') do
  @word = Word.find(params.fetch('id').to_i())
  @definitions = Definition.all()
  erb(:word)
end

get('/word/:id/definitions/new') do
  @word = Word.find(params.fetch('id').to_i())
  erb(:definitions_form)
end

post('/word/:id/definitions') do
  @word = Word.find(params.fetch('id').to_i())
  definition = params.fetch('definition')
  @definition = Definition.new({:definition => definition})
  @definition.save()
  @definitions = Definition.all()
  erb(:word)
end
