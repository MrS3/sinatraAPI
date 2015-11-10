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
configure :production do
  #DataMapper.setup(:default, 'postgres://ivtgafmmrvwvrr:Py9QZC6sNWWtKc4LTaUYpURlyo@ec2-107-21-221-59.compute-1.amazonaws.com:5432/dkannidokv5du')
  DataMapper.setup(:default, ENV['DATABASE_URL'])
end
DataMapper.finalize
DataMapper.auto_upgrade!
