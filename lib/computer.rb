require './lib/player'
require './lib/board'
require './lib/space'

# a Computer object needs to be passed the same Board as the Player and WinChecker.
# Both Computer and Player start off with @has_won = false.
class Computer
attr_accessor :board, :has_won

  def initialize(board)
    @board = board
    @has_won = false
  end

  def has_won?
    return @has_won
  end
  # Computer.add_piece does not need to be given a parameter because it chooses it's column randomly.
  def add_piece
    column = @board.columns.sample
    @board.add_piece('O', column)
  end

end
