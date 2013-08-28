require 'pry'

team_1_name = ''
team_2_name = ''
team_1_score= ''
team_2_score = ''

#team 1's name and their score
while team_1_name == ''
  puts "What was team 1's name?"
  print "> "
  team_1_name = gets.chomp
end

while team_1_score == ''
  puts "What was team 1's score?"
  print "> "
  team_1_score = gets.chomp
end

puts "Team 1 name is: #{team_1_name}"
puts "Team 1 score is: #{team_1_score}"


#team 2's name and their score
  #check that team names are unique
while team_2_name == '' || team_1_name == team_2_name
  puts "What was team 2's name?"
  print "> "
  team_2_name = gets.chomp
end

while team_2_score == ''
  puts "What was team 2's score?"
  print "> "
  team_2_score = gets.chomp
end



#output the winner
if team_1_score > team_2_score
  puts "#{team_1_name} is the victor!"
else
  puts "#{team_2_name} is the victor!"
end
