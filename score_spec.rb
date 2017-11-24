require_relative 'score'

RSpec.describe Score do
  context 'where the opponent has won' do
    it 'returns a negative score' do
      board = ['x',' ','o','x','o',' ','o',' ','x']
      current_player = 'x'
      opponent = 'o'
      score = Score.new.for_board(board, current_player, opponent)
      expect(score).to eq(-10)
    end
  end

  context 'where the player has won' do
    it 'returns a positive score' do
      board = ['x',' ','o','x','o',' ','o',' ','x']
      current_player = 'o'
      opponent = 'x'
      score = Score.new.for_board(board, current_player, opponent)
      expect(score).to eq(10)
    end
  end

  context 'where there is a draw' do
    it 'returns 0' do
      board = ['x','o','x','x','o','o','o','x','x']
      current_player = 'o'
      opponent = 'x'
      score = Score.new.for_board(board, current_player, opponent)
      expect(score).to eq(0)
    end
  end
end
