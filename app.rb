require('sinatra')
require('sinatra/reloader')
require('./lib/word_count')
also_reload('lib/**/*.rb')

get('/') do
  @header = 'Type in Your Sentence'
  erb(:form)
end

get('/output') do
  @header = 'Your Result:'
  @count = params.fetch('sentence').word_count(params.fetch('word'))
  @word = params.fetch('word')
  erb(:output)
end