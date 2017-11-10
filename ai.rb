class AI
  def self.make_move(game)
    chosen_position = rand(0..8)
    game.place(chosen_position, 'o')
  end
end
