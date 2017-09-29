require_relative 'tic_tac_toe'

RSpec.describe do
  context 'playing tic tac toe' do
    context 'when starting a new game' do
      it 'has an empty board' do
        game_board = ['','','','','','','','','']

        expect(TicTacToe.new.board).to eq(game_board)
      end
    end

    context 'when playing the game' do
      it 'a player can place a piece on the board' do
        current_game = TicTacToe.new

        game_board = ['x','','','','','','','','']

        expect(current_game.place(position: 0, player: 'x')).to eq(game_board)
      end
    end
  end
end


  # board - returns the current state of the board
  # place - allows you to place a piece on the board
  # check_for_win - checks various win conditions after place

