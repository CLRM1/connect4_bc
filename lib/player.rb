require './lib/board'
# a Player object needs to be passed the same Board as the Computer and WinChecker.
class Player
    attr_accessor :board, :has_won

  def initialize(board)
    @board = board
    @has_won = false
  end

  def has_won?
    return @has_won
  end
  # player.add_piece takes an argument of column. this way it can be tested in rspec using player.add_piece('G') or any other column letter.
  def add_piece(column)
    @board.add_piece("X", column)
  end

end
