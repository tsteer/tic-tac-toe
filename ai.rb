require_relative 'score'

class AI
  def self.pick_move(game)
    available_moves = game.get_available_moves
    scores = scores_for_moves(game.board, 'o')
    best_score_index = scores.index(scores.max)

    available_moves[best_score_index]

    # best_position = available_moves.first
    # available_moves.each do |position|
    #   board = mock_board(game.board, position, 'o')
    #   return 10 if Score.new.has_won?(board, 'o')
    #   [2, 8]
    #   [10, 0]


    #   # board = mock_board(game.board, position, 'o')
    #   # score = Score.new.for_board(board, 'o', 'x')

    #   # print('score for board')
    #   # print(board)
    #   # print('score is')
    #   # print(score)

    #   # if score > best_score
    #   #   best_score = score
    #   #   best_position = position
    #   # end 
    # end
    # best_position
  end

  def self.scores_for_moves(board, player, depth = 0)
    scores = []
    available_positions(board).each do |position|
      new_board = mock_board(board, position, player)
      # output_game_board(new_board, depth)
      # puts "\n"
      if Score.new.has_won?(new_board, player)
        scores << 10
      elsif available_positions(new_board).any?
        scores << -scores_for_moves(new_board, opponent(player), depth + 1).max
      else
        scores << 0
      end
    end

    scores
  end

  def self.output_game_board(board, depth)
    puts "#{'\t' * depth}#{board[0]}| #{board[1]}| #{board[2]}"
    puts "#{'\t' * depth}--------"
    puts "#{'\t' * depth}#{board[3]}| #{board[4]}| #{board[5]}"
    puts "#{'\t' * depth}--------"
    puts "#{'\t' * depth}#{board[6]}| #{board[7]}| #{board[8]}"
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

  def self.available_positions(board)
    (0..8).select { |position| position_available(board, position) }
  end

  def self.position_available(board, position)
    board[position] == ' ' ? true : false
  end

  def self.opponent(player)
    player == 'o' ? 'x' : 'o'
  end
end
