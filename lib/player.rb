require 'pry'
require './lib/board'

class Player
    attr_accessor :board, :has_won

  def initialize(board)
    @board = board
    @has_won = false
  end

  def has_won?
    check_horizontal_wins
    verticals_wins
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
    end

  end

  def verticals_wins
    row6_moves = []
    row5_moves = []
    row4_moves = []
    row3_moves = []
    row2_moves = []
    row1_moves = []
    row0_moves = []

    @board.board.drop(1).each do |row, first_element|
      row6_moves << first_element[0].symbol
    end

    if row6_moves[0..3] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row6_moves[1..4] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row6_moves[2..5] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row6_moves[3..6] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row6_moves[4..7] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    end

  @board.board.drop(1).each do |row, first_element|
    row5_moves << first_element[1].symbol
  end

    if row5_moves[0..3] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row5_moves[1..4] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row5_moves[2..5] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row5_moves[3..6] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row5_moves[4..7] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    end

    @board.board.drop(1).each do |row, first_element|
      row4_moves << first_element[2].symbol
    end

    if row4_moves[0..3] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row4_moves[1..4] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row4_moves[2..5] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row4_moves[3..6] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row4_moves[4..7] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    end

    @board.board.drop(1).each do |row, first_element|
      row3_moves << first_element[3].symbol
    end

    if row3_moves[0..3] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row3_moves[1..4] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row3_moves[2..5] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row3_moves[3..6] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row3_moves[4..7] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    end

    @board.board.drop(1).each do |row, first_element|
      row2_moves << first_element[4].symbol
    end

    if row2_moves[0..3] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row2_moves[1..4] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row2_moves[2..5] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row2_moves[3..6] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row2_moves[4..7] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    end

    @board.board.drop(1).each do |row, first_element|
      row1_moves << first_element[5].symbol
    end

    if row1_moves[0..3] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row1_moves[1..4] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row1_moves[2..5] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row1_moves[3..6] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row1_moves[4..7] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    end

    @board.board.drop(1).each do |row, first_element|
      row0_moves << first_element[6].symbol
    end

    if row0_moves[0..3] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row0_moves[1..4] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row0_moves[2..5] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row0_moves[3..6] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row0_moves[4..7] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    end
  end

  def check_horizontal_wins
    row6_moves = []
    row5_moves = []
    row4_moves = []
    row3_moves = []
    row2_moves = []
    row1_moves = []

    @board.board[:row6].each do |cell|
      row6_moves << cell.symbol
    end

    if row6_moves[0..3] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row6_moves[1..4] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row6_moves[2..5] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row6_moves[3..6] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row6_moves[4..7] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    end

    @board.board[:row5].each do |cell|
      row5_moves << cell.symbol
    end

    if row5_moves[0..3] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row5_moves[1..4] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row5_moves[2..5] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row5_moves[3..6] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row5_moves[4..7] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    end

    @board.board[:row4].each do |cell|
      row4_moves << cell.symbol
    end

    if row4_moves[0..3] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row4_moves[1..4] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row4_moves[2..5] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row4_moves[3..6] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row4_moves[4..7] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    end

    @board.board[:row3].each do |cell|
      row3_moves << cell.symbol
    end

    if row3_moves[0..3] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row3_moves[1..4] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row3_moves[2..5] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row3_moves[3..6] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row3_moves[4..7] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    end

    @board.board[:row2].each do |cell|
      row2_moves << cell.symbol
    end

    if row2_moves[0..3] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row2_moves[1..4] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row2_moves[2..5] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row2_moves[3..6] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row2_moves[4..7] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    end

    @board.board[:row1].each do |cell|
      row1_moves << cell.symbol
    end

    if row1_moves[0..3] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row1_moves[1..4] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row1_moves[2..5] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row1_moves[3..6] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    elsif row1_moves[4..7] == ['X', 'X', 'X', 'X']
      puts "Player 1 wins!!"
      @has_won = true
    end
  end

end
