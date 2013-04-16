class Player
	attr_accessor :name, :score

	def initialize(args)
		@name = args[:name]
		@team = args[:team]
		@score = 0
	end

	def add_score(score = 1)
		@score += score
	end

	def subtract_score(score = 1)
		@score -= score
	end

end
