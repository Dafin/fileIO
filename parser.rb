require 'csv'
require 'date'
require 'pry'


class League


COLUMNS= [:date, :team1, :team2, :halftime, :fulltime ] 

attr_accessor *COLUMNS




	# def initialize(date, team1, team2, fulltime, halftime)
	# 	@date = date
	# 	@team_1 = team1
	# 	@team2 = team2
	#   @fulltime = fulltime 
	#   @halftime = halftime

	# end


	def self.read_data
		results=[]
		m=0
		league_results = CSV.read("premierleague.csv")
		league_results.shift
		league_results.each do |row|

			league_result=League.new
		  COLUMNS.each_with_index do |name, idx|
        league_result.instance_variable_set("@" + name.to_s, row[idx])
      end
		
      results << league_result
		


			# results << League.new(Date.parse(League[0],League[1],League[2],League[3],League[4])

			m +=1
		  puts row.inspect
		end




		puts m
		puts league_results.min
		puts league_results.max
		return results
	end
end


games = League.read_data



puts "First game was between #{games.first.team1} and #{games.first.team2}\nThe final score was #{games.first.fulltime} "

binding.pry
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