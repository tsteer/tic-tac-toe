require_relative './tic_tac_toe.rb'

game = TicTacToe.new

#creates a game
#lets people place
#halts when win detected

loop do
  #player x turn
  puts "player x place a piece"
  position = gets.chomp.to_i
  game.place(position, 'x')
  game.output_game_board

  if game.check_win_condition_for_x
    puts 'player x has won'
    break
  end

  #player o turn
  puts "player o place a piece"
  position = gets.chomp.to_i
  game.place(position, 'o')
  game.output_game_board
  
  if game.check_win_condition_for_o
    puts 'player o has won'
    break
  end
end
