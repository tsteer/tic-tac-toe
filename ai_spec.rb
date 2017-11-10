require_relative 'tic_tac_toe'
require_relative 'ai'

RSpec.describe AI do
  context 'with an empty game board' do
    it 'places a piece of the board' do
      board = TicTacToe.new.board
      AI.place(board)

      ai_placed = board.select do |piece|
        piece == 'x'
      end

      expect(ai_placed.length).to eq(1)
    end
  end
end
