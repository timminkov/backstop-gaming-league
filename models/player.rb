require 'database'

class Player < Database
	attr_accessor :name, :score, :tokens

	def initialize(args = {})
		@name = args[:name] || 'No name entered!'
		@team = args[:team] || 'No team entered!'
		@score = 0
		@tokens = 10
	end

	def add_score(score = 1)
		@score += score
	end

	def subtract_score(score = 1)
		@score -= score
	end

	def insert(object)
		players.insert(:name => @name, :score => @score, :tokens => @tokens)
	end
end
