# require your app file first
require_relative 'opposites'
require 'sinatra/activerecord/rake'
set :database, {adapter: "sqlite3", database: "foo.sqlite3"}
namespace :db do
  task :load_config do
    require './opposites'
  end
end