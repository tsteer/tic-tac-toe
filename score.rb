class Score
  def for_board(board, current_player, opponent)
    if has_won?(board, current_player)
      10
    elsif has_won?(board, opponent)
      -10
    else
      0
    end
  end

private

  def has_won?(board, pl)
    if board[0] == pl && board[4] == pl && board[8] == pl 
      true
    elsif board[2] == pl && board[4] == pl && board[6] == pl
      true
    elsif board[0] == pl && board[1] == pl && board[2] == pl
      true
    elsif board[3] == pl && board[4] == pl && board[5] == pl
      true
    elsif board[6] == pl && board[7] == pl && board[8] == pl
      true
    elsif board[0] == pl && board[3] == pl && board[6] == pl
      true
    elsif board[1] == pl && board[4] == pl && board[7] == pl
      true
    elsif board[2] == pl && board[5] == pl && board[8] == pl
      true
    else
      false
    end
  end
end
