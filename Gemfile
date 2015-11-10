source 'https://rubygems.org'
gem 'sinatra', '>=1.0'
gem 'sinatra-contrib'
gem 'rake'
gem 'data_mapper'
gem 'dm-core'
gem 'dm-timestamps'
gem 'dm-validations'
gem 'dm-aggregates'
gem 'dm-migrations'

group :production do
  gem 'pg'
  gem 'dm-postgres-adapter'
end
group :development do
  gem 'sqlite3'
  gem 'dm-sqlite-adapter'
end
