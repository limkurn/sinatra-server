require 'sinatra'
require 'sinatra/activerecord'

ActiveRecord::Base.establish_connection(
  adapter: "mysql2", 
  host: "localhost",
  database: "sinatra_service",
  username: "root",
  password: "root")


class User <  ActiveRecord::Base
end


