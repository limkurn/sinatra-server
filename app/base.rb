require 'sinatra'
require 'sinatra/activerecord'
require 'mysql2'

Dir[File.dirname(__FILE__) + '/models/*.rb'].each {|file| require file }

class SinatraRecord < Sinatra::Base
    register Sinatra::ActiveRecordExtension
    env = ENV["SINATRA_ENV"] || "development"
    databases = YAML.load_file("config/database.yml")
    ActiveRecord::Base.establish_connection(databases[env])
end
