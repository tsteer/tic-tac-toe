class TicTacToe
  attr_accessor :board, :computer_player

  def initialize
    @board = ['','','','','','','','','']
  end

  def place(position, player)
    return 'invalid position' unless position_on_board_valid?(position)
    return 'invalid piece' unless confirm_valid_piece?(player)
    board[position] = player

    check_win_condition
  end

  def computer_player_place_piece
    (0..8).select do |number|
      return number if position_on_board_valid?(number)
    end
  end

  def check_win_condition
    if board[0] == 'x' && board[4] == 'x' && board[8] == 'x' 
      return "Player x has won"
    elsif board[2] == 'x' && board[4] == 'x' && board[6] == 'x'
      return "Player x has won"
    elsif board[0] == 'x' && board[1] == 'x' && board[2] == 'x'
      return "Player x has won"
    elsif board[3] == 'x' && board[4] == 'x' && board[5] == 'x'
      return "Player x has won"
    elsif board[6] == 'x' && board[7] == 'x' && board[8] == 'x'
      return "Player x has won"
    elsif board[0] == 'x' && board[3] == 'x' && board[6] == 'x'
      return "Player x has won"
    elsif board[1] == 'x' && board[4] == 'x' && board[7] == 'x'
      return "Player x has won"
    elsif board[2] == 'x' && board[5] == 'x' && board[8] == 'x'
      return "Player x has won"
    end
  end

  def position_on_board_valid?(position)
    return true if (position > -1) && (position < 9) && (board[position] == '')

    false
  end

  def confirm_valid_piece?(player)
    return true if player == 'x' || player == 'o'
    false
  end
end
