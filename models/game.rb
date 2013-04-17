require 'database'

class Game < Database
	attr_accessor :date, :game, :players, :winner

	def initialize(date)
		@date = date
		@players = []
	end

	def add_player(player)
		@players << player
	end

	def remove_player(player)
		@players.delete(player)
	end

	def insert(object)
		games.insert(:date => @date, :game => @game, :players => @players, :winner => @winner)
	end
end