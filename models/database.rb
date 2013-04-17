require 'sequel'

class Database
	DB = Sequel.connect('sqlite://')
end