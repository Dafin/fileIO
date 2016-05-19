require 'csv'
require 'date'

class League
attr_accessor :team1, :team2, :halftime, :fulltime, :date


	def initialize(date, team1, team2, fulltime, halftime)
		@date = date
		@team_1 = team1
		@team2 = team2
	  @fulltime = fulltime 
	  @halftime = halftime

	end


	def self.read_data
		results=[]
		m=0
		league_results = CSV.read("premierleague.csv")
		league_results.shift
		league_results.each do |row|


			# results << League.new(Date.parse(League[0],League[1],League[2],League[3],League[4])

			m +=1
		  puts row.inspect
		end


		puts m
		puts league_results.min
		puts league_results.max

	end
end


League.read_data

# def. self.read_data
# 			f = File.open("premierleague.csv")
# 			results = []
# 			f.each_line do |line|
# 			results << line.split(",")
# end


# puts f.size
# f.close




# ###################

# f.gets.split("r").each do 