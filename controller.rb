require('sinatra')
require('sinatra/reloader')

require_relative('./models/film')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/films' do
  @films = Film.all()
  # @films = films.map{|film|Film.new[options]}
  erb(:films)
end
