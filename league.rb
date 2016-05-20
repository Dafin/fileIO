class League

	include Comparable
	def <=>(other)
		self.team1<=>other.team1
	end

	def self.columns
		[:date, :team1, :team2, :halftime, :fulltime ] 
	end


	attr_accessor *League.columns

	# def initialize(date, team1, team2, fulltime, halftime)
	# 	@date = date
	# 	@team_1 = team1
	# 	@team2 = team2
	#   @fulltime = fulltime 
	#   @halftime = halftime
	# end

end

