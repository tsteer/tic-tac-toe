require_relative 'tic_tac_toe'

RSpec.describe do
  context 'playing tic tac toe' do
    let(:current_game) { TicTacToe.new }

    context 'when starting a new game' do
      it 'has an empty board' do
        game_board = ['','','','','','','','','']

        expect(TicTacToe.new.board).to eq(game_board)
      end
    end

    context 'when playing the game' do
      let(:current_game) { TicTacToe.new }

      it 'a player can place a piece on the board' do
        game_board = ['x','','','','','','','','']

        current_game.place(0,'x')
        
        expect(current_game.board).to eq(game_board)
      end

      it 'a player can place a piece on the board' do
        game_board = ['','x','','','','','','','']
        current_game.place(1,'x')

        expect(current_game.board).to eq(game_board)
      end

      it 'a player can place multiple pieces on the board' do
        game_board = ['x','','x','','x','','','','']
      
        current_game.place(0, 'x')
        current_game.place(2, 'x')
        current_game.place(4, 'x')

        expect(current_game.board).to eq(game_board)
      end
    end
  end
end
