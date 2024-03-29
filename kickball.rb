require 'pry'
#set game state at the start
game_over = false

#enter game loop
while game_over == false
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
    team_1_score = gets.chomp.to_i
  end


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
    team_2_score = gets.chomp.to_i
  end

  #extract a method with 4 arguments
  def identify_winner(team_1_name, team_2_name, team_1_score, team_2_score)
    return team_1_score > team_2_score
  end

  #output the winner
  if identify_winner(team_1_name, team_2_name, team_1_score, team_2_score)  == true
    puts "#{team_1_name} is the victor!"
  else
    puts "#{team_2_name} is the victor!"
  end

  # provide option to continue
  input = ''
  while input == ''
     puts "Would you like to provide another game? (Y/N)"
     input = gets.chomp
  end

  if input.downcase == 'y'
    game_over = false
  elsif input == 'n'
    game_over = true
    puts "Bye!"
    # exit game loop
    break
  end

end

