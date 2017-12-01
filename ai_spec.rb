require_relative 'tic_tac_toe'
require_relative 'ai'

RSpec.describe AI do
  context 'with an empty game board' do
    it 'places a piece of the board' do
      game = TicTacToe.new
      AI.make_move(game)

      ai_placed = game.board.select do |piece|
        piece == 'o'
      end

      expect(ai_placed.length).to eq(1)
    end
  end

  context 'when the player is one move away from a win' do
    it 'plays the winning move' do
      game = TicTacToe.new(
        ['o', 'o', ' ', ' ', 'o', 'x', 'o', 'x', 'x']
      )

      move = AI.pick_move(game)
      expect(move).to eq(2)
    end
  end

  context 'when the opponent is one move away from a win' do
    it 'prevents the winning move' do
      game = TicTacToe.new(
        ['x', ' ', 'o', 'o', 'x', 'x', 'x', 'o', ' ']
      )

      move = AI.pick_move(game)
      expect(move).to eq(8)
    end
  end

  context 'when given an empty board' do
    it 'goes in the corner' do
      game = TicTacToe.new(
        [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
      )

      move = AI.pick_move(game)
      expect(move).to eq(0)
    end
  end
end
