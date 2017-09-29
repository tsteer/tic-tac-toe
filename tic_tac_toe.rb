class TicTacToe
  attr_accessor :board

  def initialize
    @board = ['','','','','','','','','']
  end

  def place(position, player)
    board[position] = player
  end
end
