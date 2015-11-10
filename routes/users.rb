get '/api/users' do
    User.all.to_json
end


post '/api/users' do
  body = JSON.parse request.body.read
  user = User.create(
    name: body['name'],
    adress:  {'city' => body['city'], 'line1' => body['adress'] }
  )
  status 201
end
