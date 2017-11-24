class TicTacToe
  attr_accessor :board, :computer_player

  def initialize
    @board = [' ',' ',' ',' ',' ',' ',' ',' ',' ']
  end

  def place(position, player)
    return false unless position_on_board_valid?(position)
    return false unless confirm_valid_piece?(player)
    return false unless position_available(position)
    board[position] = player
  end

  def check_win_condition_for_x
    if board[0] == 'x' && board[4] == 'x' && board[8] == 'x' 
      true
    elsif board[2] == 'x' && board[4] == 'x' && board[6] == 'x'
      true
    elsif board[0] == 'x' && board[1] == 'x' && board[2] == 'x'
      true
    elsif board[3] == 'x' && board[4] == 'x' && board[5] == 'x'
      true
    elsif board[6] == 'x' && board[7] == 'x' && board[8] == 'x'
      true
    elsif board[0] == 'x' && board[3] == 'x' && board[6] == 'x'
      true
    elsif board[1] == 'x' && board[4] == 'x' && board[7] == 'x'
      true
    elsif board[2] == 'x' && board[5] == 'x' && board[8] == 'x'
      true
    else
      false
    end
  end

    def check_win_condition_for_o
    if board[0] == 'o' && board[4] == 'o' && board[8] == 'o' 
      true
    elsif board[2] == 'o' && board[4] == 'o' && board[6] == 'o'
      true
    elsif board[0] == 'o' && board[1] == 'o' && board[2] == 'o'
      true
    elsif board[3] == 'o' && board[4] == 'o' && board[5] == 'o'
      true
    elsif board[6] == 'o' && board[7] == 'o' && board[8] == 'o'
      true
    elsif board[0] == 'o' && board[3] == 'o' && board[6] == 'o'
      true
    elsif board[1] == 'o' && board[4] == 'o' && board[7] == 'o'
      true
    elsif board[2] == 'o' && board[5] == 'o' && board[8] == 'o'
      true
    else
      false
    end
  end

  def check_draw_conditions
    board.all? { |position| position == 'o' || position == 'x' }
  end

  def position_available(position)
    board[position] == ' ' ? true : false
  end

  def position_on_board_valid?(position)
    return true if (position > -1) && (position < 9) && (board[position] == ' ')

    false
  end

  def confirm_valid_piece?(player)
    return true if player == 'x' || player == 'o'
    false
  end

  def output_game_board
    puts "#{board[0]}| #{board[1]}| #{board[2]}"
    puts "--------"
    puts "#{board[3]}| #{board[4]}| #{board[5]}"
    puts "--------"
    puts "#{board[6]}| #{board[7]}| #{board[8]}"
  end
end
