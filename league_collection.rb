require 'date'
require './league'
require 'csv'




module LeagueCollection
	
	def self.read_data
		results=[]
		m=0
		league_results = CSV.read("premierleague.csv")
		league_results.shift
		league_results.each do |row|

			league_result=League.new
			League.columns.each_with_index do |name, idx|
				league_result.instance_variable_set("@" + name.to_s, row[idx])
			end
			league_result.date= Date.parse(league_result.date)
			league_result.fulltime = league_result.fulltime.split("-").map(&:to_i)
			results << league_result
			# results << League.new(Date.parse(League[0],League[1],League[2],League[3],League[4])
			m +=1
			puts row.inspect
		end

		# puts m
		# puts league_results.min
		# puts league_results.max
		return results
	end
end