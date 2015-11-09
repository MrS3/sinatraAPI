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
  DataMapper.setup(:default, 'postgress://ivtgafmmrvwvrr:Py9QZC6sNWWtKc4LTaUYpURlyo@dkannidokv5du/sinatraTest')
end
DataMapper.finalize
DataMapper.auto_upgrade!
