class TicTacToe
  attr_accessor :board

  def initialize
    @board = ['','','','','','','','','']
  end

  def place(position, player)
    board[position] = player

    check_win_condition
  end

  def check_win_condition
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
end
