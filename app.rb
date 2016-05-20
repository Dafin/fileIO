require 'pry'
require './league_collection'
games = LeagueCollection.read_data

puts "_____________________________________\nThe First game was between #{games.first.team1} and #{games.first.team2}\nThe final score was #{games.first.fulltime} "

homes = games.select{|match| match.team1=="Arsenal" }
aways = games.select{|match| match.team2=="Arsenal" }

home_goals = homes.inject(0){|sum, homepitch| sum+ homepitch.fulltime[0]}
away_goals = aways.inject(0){|sum, awaypitch| sum+ awaypitch.fulltime[1]}

all_goals = home_goals + away_goals

puts "Name for the filename please"
file2write = gets.chomp



puts file2write

CSV.open("#{file2write}.csv", "wb") do |csv|
  csv << ["row", "of", "CSV", "The Aggregrate goals scored by "]
  csv << ["Arsenal, this season", all_goals]
 
end


puts all_goals


# binding.pry
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