require_relative './tic_tac_toe.rb'
require_relative './ai'

game = TicTacToe.new

#creates a game
#lets people place
#halts when win detected

loop do
  #player x turn
  piece_placed = false

  until piece_placed do
    puts "player x place a piece"
    position = gets.chomp.to_i
    
    piece_placed = true if game.place(position, 'x')
  end

  game.output_game_board

  if game.check_win_condition_for_x
    puts 'player x has won'
    break
  end

  #player o turn
  piece_placed = false

  until piece_placed do
    piece_placed = true if AI.make_move(game)
  end

  game.output_game_board
  
  if game.check_win_condition_for_o
    puts 'player o has won'
    break
  end
end
