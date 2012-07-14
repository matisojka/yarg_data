require 'active_record'
require 'yaml'
require 'pry'

dbconfig = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(dbconfig)

pry
