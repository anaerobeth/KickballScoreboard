require 'pry'
# set state at the start
game_over = false
game_number = 0
games = []

# begin entering team names and scores
while game_over == false
  # define array, hash and variables to be used
  names_and_scores = []

  team_1_name = ''
  team_2_name = ''
  team_1_score= ''
  team_2_score = ''


  # team 1's name and their score
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



  # team 2's name and their score
    # check that team names are unique
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

  # capture the names and scores into a hash

  names_and_scores = [team_1_name, team_1_score, team_2_name, team_2_score]

  # capture the game stats into an array
  games[game_number] = names_and_scores


  # provide option to continue entering team names and scores
  input = ''
  while input == ''
     puts "Would you like to provide another game? (Y/N)"
     input = gets.chomp
  end

  if input.downcase == 'y'
    game_over = false
    game_number += 1
  elsif input == 'n'
    game_over = true
    # exit loop
    break
  end
end


  # extract a method with 4 arguments
  def identify_winner(team_1_name, team_2_name, team_1_score, team_2_score)
    return team_1_score > team_2_score
  end


  games.each_with_index do |game, index|
    #if identify_winner(team_1_name, team_2_name, team_1_score, team_2_score)  == true
    game_id = index + 1
    if identify_winner(game[0], game[2], game[1], game[3])
      puts "In game #{game_id}, #{game[0]} is the victor!"
    else
      puts "In game #{game_id}, #{game[2]} is the victor!"
    end

  end

  #output the winner



