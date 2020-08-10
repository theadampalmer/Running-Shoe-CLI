# where we set up what app requires
require 'pry'
require 'httparty'
require 'nokogiri'
require 'sqlite3'

require_relative '../lib/cli.rb'
require_relative '../lib/shoes.rb'
require_relative '../lib/scraper.rb'

DB = {conn: SQLite3::Database.new('database/shoes_database.db')}

sql_shoes = "CREATE TABLE IF NOT EXISTS shoes (id INTEGER PRIMARY KEY, name TEXT, model TEXT, price TEXT, description TEXT)"

DB[:conn].execute(sql_shoes)

binding.pry