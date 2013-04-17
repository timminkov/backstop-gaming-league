require 'database'

class Season < Database
	attr_accessor :startDate, :endDate

	def initalize(startDate, endDate)
		@startDate = startDate
		@endDate = endDate
	end
end