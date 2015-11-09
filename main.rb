require 'json'
require 'sinatra'
require 'data_mapper'
require 'dm-migrations'
require './models/movie'
require './routes/movies'


configure :development do
  DataMapper::Logger.new($stdout, :debug)
  DataMapper.setup(:default, 'sqlite:sinatra_service.db')
end



DataMapper.finalize
DataMapper.auto_upgrade!
