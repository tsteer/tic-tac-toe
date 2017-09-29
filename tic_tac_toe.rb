class TicTacToe
  attr_accessor :board, :computer_player

  def initialize
    @board = ['','','','','','','','','']
  end

  def place(position, player)
    return 'invalid position' unless position_on_board_valid?(position)
    return 'invalid piece' unless confirm_valid_piece?(player)
    board[position] = player
    valid_number = computer_player_place_piece
    board[position] = 'o'

    check_win_condition
  end

  def computer_player_place_piece
    (0..8).select do |number|
      return number if position_on_board_valid?(number)
    end
  end

  def check_win_condition
    rc = //
    
    if board == ['x','','','x','','','x','','']
      "Player x has won"
    elsif board == ['','x','','','x','','','x','']
      "Player x has won"
    elsif board == ['','','x','','','x','','','x']
    "Player x has won"
    elsif board == ['x','x','x','','','','','','']
      "Player x has won"
    elsif board == ['','','','x','x','x','','','']
      "Player x has won"
    elsif board == ['x','','','','x','','','','x']
      "Player x has won"
    elsif board == ['','','x','','x','','x','','']
      "Player x has won"
    elsif board == ['','','','','','','x','x','x']
      "Player x has won"
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
