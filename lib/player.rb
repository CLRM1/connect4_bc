require 'pry'
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
    if column.upcase == 'A'
      column = 0
    elsif column.upcase == 'B'
      column = 1
    elsif column.upcase == 'C'
      column = 2
    elsif column.upcase == 'D'
      column = 3
    elsif column.upcase == 'E'
      column = 4
    elsif column.upcase == 'F'
      column = 5
    elsif column.upcase == 'G'
      column = 6
    end
    #we puts ' ' 10.times before displaying an error message to space out the previous board and make the console easier to read.
    if column.class != Integer
      10.times do
        puts " "
      end
      puts "Invalid column. Choose a column (ABCDEFG)"
      board.print_board
      add_piece(gets.chomp)
    elsif column <= 6
      if @board.rows[:row6][column].is_empty?
        board.rows[:row6][column].is_empty = false
        board.rows[:row6][column].symbol = 'X'

      elsif @board.rows[:row5][column].is_empty?
        board.rows[:row5][column].is_empty = false
        board.rows[:row5][column].symbol = 'X'

      elsif @board.rows[:row4][column].is_empty?
        board.rows[:row4][column].is_empty = false
        board.rows[:row4][column].symbol = 'X'

      elsif @board.rows[:row3][column].is_empty?
        board.rows[:row3][column].is_empty = false
        board.rows[:row3][column].symbol = 'X'

      elsif @board.rows[:row2][column].is_empty?
        board.rows[:row2][column].is_empty = false
        board.rows[:row2][column].symbol = 'X'

      elsif @board.rows[:row1][column].is_empty?
        board.rows[:row1][column].is_empty = false
        board.rows[:row1][column].symbol = 'X'
      else
        puts "Column is full. Choose another"
        add_piece(gets.chomp)
      end
    end
  end

end
