require('sinatra')
require('sinatra/reloader')

require_relative('./models/film')
also_reload('./models/*')

get '/' do
  erb(:home)
end

get '/films' do
  @films = Film.all()
  # @films = films.each{|film|Film.new(film)}
  erb(:films)
end

get '/films/:id' do
  @film = Film.find_by_id(params[:id].to_i)
  erb(:film)
end
