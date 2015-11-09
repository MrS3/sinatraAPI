
get '/api/movies' do
  Movie.all.to_json
end
