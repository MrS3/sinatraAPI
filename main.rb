require 'json'
require 'sinatra'
require 'data_mapper'
require 'stripe'
require 'dm-migrations'
require './models/movie'
require './models/user'
require './routes/movies'
require './routes/users'
require './routes/charges'

set :publishable_key, ENV['PUBLISHABLE_KEY']
set :secret_key, ENV['SECRET_KEY']

Stripe.api_key = settings.secret_key

configure :development do
  DataMapper::Logger.new($stdout, :debug)
  DataMapper.setup(:default, 'sqlite:sinatra_service.db')
end
configure :production do
  DataMapper.setup(:default, ENV['DATABASE_URL'])
end
DataMapper.finalize
DataMapper.auto_migrate!
##DataMapper.auto_upgrade!
