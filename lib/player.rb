require 'pry'
require './lib/board'

class Player
    attr_accessor :board, :has_won
  # def initialize
  #   @board = board.new
  #   # @input = gets.chomp
  # end

  def initialize(board)
    @board = board
    @has_won = false
  end

  def has_won?
    return @has_won
  end

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

    if column.class != Integer
      10.times do
        puts " "
      end
      puts "Invalid column. Choose a column (ABCDEFG)"
      board.print_board
      add_piece(gets.chomp)
    elsif column <= 6
      if @board.board[:row6][column].is_empty?
        board.board[:row6][column].is_empty = false
        board.board[:row6][column].symbol = 'X'
          # experiment 1
          # if @board.board[:row6][column][0..7] == 'x'
          #   # each do if necessary ^
          #   puts "Player1 wins!"
          # elsif @board.board[:row6][column][0..7] == 'o'
          #   puts "Player2 wins!"
        # end

      elsif @board.board[:row5][column].is_empty?
        board.board[:row5][column].is_empty = false
        board.board[:row5][column].symbol = 'X'

      elsif @board.board[:row4][column].is_empty?
        board.board[:row4][column].is_empty = false
        board.board[:row4][column].symbol = 'X'

      elsif @board.board[:row3][column].is_empty?
        board.board[:row3][column].is_empty = false
        board.board[:row3][column].symbol = 'X'

      elsif @board.board[:row2][column].is_empty?
        board.board[:row2][column].is_empty = false
        board.board[:row2][column].symbol = 'X'

      elsif @board.board[:row1][column].is_empty?
        board.board[:row1][column].is_empty = false
        board.board[:row1][column].symbol = 'X'
      else
        puts "Column is full. Choose another"
        add_piece(gets.chomp)
      end
      # @board.print_board
    end
  end

end

# binding.pry
