require_relative 'score'

class AI
  def self.pick_move(game)
    best_score = 0

    available_moves = game.get_available_moves

    print('available moves')
    print(available_moves)

    best_position = available_moves.first
    available_moves.each do |position|
      board = mock_board(game.board, position, 'o')
      score = Score.new.for_board(board, 'o', 'x')

      print('score for board')
      print(board)
      print('score is')
      print(score)

      if score > best_score
        best_score = score
        best_position = position
      end 
    end
    best_position
  end

  def self.make_move(game)
    chosen_position = pick_move(game)
    game.place(chosen_position, 'o')
  end

  def self.mock_board(board, new_position, player)
    new_board = board.clone
    new_board[new_position] = player
    new_board
  end
end
