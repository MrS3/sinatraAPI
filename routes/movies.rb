
get '/api/movies' do
  Movie.all.to_json
end

post '/api/movies' do
  title = params[:title]
  year = params[:year]
  description = params[:description]
  movie = Movie.create(
  title:  title,
  year:   year,
  description: description
  )
  status 201
end
