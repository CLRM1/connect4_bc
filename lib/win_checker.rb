require './lib/board'
require './lib/player'
require './lib/space'
require './lib/computer'
require 'pry'
class WinChecker
  attr_reader :board
  attr_accessor :player, :computer
  def initialize(board, player, computer)
    @player = player
    @computer = computer
    @board = board
  end

  def is_a_draw?
    symbols = []

    @board.board.drop(1).each do |rows, spaces|
      symbols << spaces.map do |space|
        space.symbol
      end
    end
    symbols.flatten!

    if symbols.none?('.')
      true
      puts "It's a draw!!"
    else
      false
    end

  end

  def check_vertical_wins
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

    if row6_moves[0..3]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row6_moves[1..4]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row6_moves[2..5]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row6_moves[3..6]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row6_moves[4..7]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    end

    if row6_moves[0..3]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row6_moves[1..4]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row6_moves[2..5]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row6_moves[3..6]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row6_moves[4..7]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    end

  @board.board.drop(1).each do |row, first_element|
    row5_moves << first_element[1].symbol
  end

  if row5_moves[0..3]== ['X', 'X', 'X', 'X']
    puts "You win!!"
    @player.has_won = true
  elsif row5_moves[1..4]== ['X', 'X', 'X', 'X']
    puts "You win!!"
    @player.has_won = true
  elsif row5_moves[2..5]== ['X', 'X', 'X', 'X']
    puts "You win!!"
    @player.has_won = true
  elsif row5_moves[3..6]== ['X', 'X', 'X', 'X']
    puts "You win!!"
    @player.has_won = true
  elsif row5_moves[4..7]== ['X', 'X', 'X', 'X']
    puts "You win!!"
    @player.has_won = true
  end

  if row5_moves[0..3]== ['O', 'O', 'O', 'O']
    puts "Computer wins!!"
    @computer.has_won = true
  elsif row5_moves[1..4]== ['O', 'O', 'O', 'O']
    puts "Computer wins!!"
    @computer.has_won = true
  elsif row5_moves[2..5]== ['O', 'O', 'O', 'O']
    puts "Computer wins!!"
    @computer.has_won = true
  elsif row5_moves[3..6]== ['O', 'O', 'O', 'O']
    puts "Computer wins!!"
    @computer.has_won = true
  elsif row5_moves[4..7]== ['O', 'O', 'O', 'O']
    puts "Computer wins!!"
    @computer.has_won = true
  end

    @board.board.drop(1).each do |row, first_element|
      row4_moves << first_element[2].symbol
    end

    if row4_moves[0..3]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row4_moves[1..4]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row4_moves[2..5]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row4_moves[3..6]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row4_moves[4..7]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    end

    if row4_moves[0..3]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row4_moves[1..4]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row4_moves[2..5]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row4_moves[3..6]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row4_moves[4..7]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    end

    @board.board.drop(1).each do |row, first_element|
      row3_moves << first_element[3].symbol
    end

    if row3_moves[0..3]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row3_moves[1..4]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row3_moves[2..5]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row3_moves[3..6]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row3_moves[4..7]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    end

    if row3_moves[0..3]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row3_moves[1..4]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row3_moves[2..5]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row3_moves[3..6]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row3_moves[4..7]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    end

    @board.board.drop(1).each do |row, first_element|
      row2_moves << first_element[4].symbol
    end

    if row2_moves[0..3]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row2_moves[1..4]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row2_moves[2..5]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row2_moves[3..6]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row2_moves[4..7]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    end

    if row2_moves[0..3]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row2_moves[1..4]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row2_moves[2..5]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row2_moves[3..6]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row2_moves[4..7]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    end

    @board.board.drop(1).each do |row, first_element|
      row1_moves << first_element[5].symbol
    end

    if row1_moves[0..3]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row1_moves[1..4]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row1_moves[2..5]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row1_moves[3..6]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row1_moves[4..7]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    end

    if row1_moves[0..3]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row1_moves[1..4]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row1_moves[2..5]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row1_moves[3..6]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row1_moves[4..7]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    end

    @board.board.drop(1).each do |row, first_element|
      row0_moves << first_element[6].symbol
    end

    if row0_moves[0..3]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row0_moves[1..4]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row0_moves[2..5]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row0_moves[3..6]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row0_moves[4..7]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    end

    if row0_moves[0..3]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row0_moves[1..4]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row0_moves[2..5]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row0_moves[3..6]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row0_moves[4..7]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
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

    if row6_moves[0..3]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row6_moves[1..4]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row6_moves[2..5]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row6_moves[3..6]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row6_moves[4..7]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    end

    if row6_moves[0..3]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row6_moves[1..4]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row6_moves[2..5]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row6_moves[3..6]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row6_moves[4..7]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    end

    @board.board[:row5].each do |cell|
      row5_moves << cell.symbol
    end

    if row5_moves[0..3]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row5_moves[1..4]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row5_moves[2..5]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row5_moves[3..6]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row5_moves[4..7]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    end

    if row5_moves[0..3]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row5_moves[1..4]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row5_moves[2..5]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row5_moves[3..6]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row5_moves[4..7]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    end

    @board.board[:row4].each do |cell|
      row4_moves << cell.symbol
    end

    if row4_moves[0..3]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row4_moves[1..4]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row4_moves[2..5]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row4_moves[3..6]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row4_moves[4..7]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    end

    if row4_moves[0..3]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row4_moves[1..4]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row4_moves[2..5]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row4_moves[3..6]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row4_moves[4..7]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    end

    @board.board[:row3].each do |cell|
      row3_moves << cell.symbol
    end

    if row3_moves[0..3]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row3_moves[1..4]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row3_moves[2..5]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row3_moves[3..6]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row3_moves[4..7]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    end

    if row3_moves[0..3]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row3_moves[1..4]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row3_moves[2..5]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row3_moves[3..6]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row3_moves[4..7]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    end

    @board.board[:row2].each do |cell|
      row2_moves << cell.symbol
    end

    if row2_moves[0..3]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row2_moves[1..4]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row2_moves[2..5]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row2_moves[3..6]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row2_moves[4..7]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    end

    if row2_moves[0..3]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row2_moves[1..4]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row2_moves[2..5]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row2_moves[3..6]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row2_moves[4..7]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    end

    @board.board[:row1].each do |cell|
      row1_moves << cell.symbol
    end

    if row1_moves[0..3]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row1_moves[1..4]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row1_moves[2..5]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row1_moves[3..6]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif row1_moves[4..7]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    end

    if row1_moves[0..3]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row1_moves[1..4]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row1_moves[2..5]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row1_moves[3..6]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row1_moves[4..7]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    end
  end

  def check_diagonal_wins
    diagonal_win_1 = [
      @board.board[:row1][0].symbol,
      @board.board[:row2][1].symbol,
      @board.board[:row3][2].symbol,
      @board.board[:row4][3].symbol,
    ]

    diagonal_win_2 = [
      @board.board[:row2][1].symbol,
      @board.board[:row3][2].symbol,
      @board.board[:row4][3].symbol,
      @board.board[:row5][4].symbol
    ]

    diagonal_win_3 = [
      @board.board[:row3][2].symbol,
      @board.board[:row4][3].symbol,
      @board.board[:row5][4].symbol,
      @board.board[:row6][5].symbol,
    ]

    diagonal_win_4 = [
      @board.board[:row1][1].symbol,
      @board.board[:row2][2].symbol,
      @board.board[:row3][3].symbol,
      @board.board[:row4][4].symbol
    ]

    diagonal_win_5 = [
      @board.board[:row2][2].symbol,
      @board.board[:row3][3].symbol,
      @board.board[:row4][4].symbol,
      @board.board[:row5][5].symbol
    ]

    diagonal_win_6 = [
      @board.board[:row3][3].symbol,
      @board.board[:row4][4].symbol,
      @board.board[:row5][5].symbol,
      @board.board[:row6][6].symbol
    ]

    diagonal_win_7 = [
      @board.board[:row1][2].symbol,
      @board.board[:row2][3].symbol,
      @board.board[:row3][4].symbol,
      @board.board[:row4][5].symbol
    ]

    diagonal_win_8 = [
      @board.board[:row2][3].symbol,
      @board.board[:row3][4].symbol,
      @board.board[:row4][5].symbol,
      @board.board[:row5][6].symbol
    ]

    diagonal_win_9 = [
      @board.board[:row1][3].symbol,
      @board.board[:row2][4].symbol,
      @board.board[:row3][5].symbol,
      @board.board[:row4][6].symbol
    ]

    diagonal_win_10 = [
      @board.board[:row2][0].symbol,
      @board.board[:row3][1].symbol,
      @board.board[:row4][2].symbol,
      @board.board[:row5][3].symbol
    ]

    diagonal_win_11 = [
      @board.board[:row3][1].symbol,
      @board.board[:row4][2].symbol,
      @board.board[:row5][3].symbol,
      @board.board[:row6][4].symbol
    ]

    diagonal_win_12 = [
      @board.board[:row3][0].symbol,
      @board.board[:row4][1].symbol,
      @board.board[:row5][2].symbol,
      @board.board[:row6][3].symbol
    ]

    diagonal_win_13 = [
      @board.board[:row3][6].symbol,
      @board.board[:row4][5].symbol,
      @board.board[:row5][4].symbol,
      @board.board[:row6][3].symbol
    ]

    diagonal_win_14 = [
      @board.board[:row2][6].symbol,
      @board.board[:row3][5].symbol,
      @board.board[:row4][4].symbol,
      @board.board[:row5][3].symbol
    ]

    diagonal_win_15 = [
      @board.board[:row3][5].symbol,
      @board.board[:row4][4].symbol,
      @board.board[:row5][3].symbol,
      @board.board[:row6][2].symbol
    ]

    diagonal_win_16 = [
      @board.board[:row1][6].symbol,
      @board.board[:row2][5].symbol,
      @board.board[:row3][4].symbol,
      @board.board[:row4][3].symbol
    ]

    diagonal_win_17 = [
      @board.board[:row2][5].symbol,
      @board.board[:row3][4].symbol,
      @board.board[:row4][3].symbol,
      @board.board[:row5][2].symbol
    ]

    diagonal_win_18 = [
      @board.board[:row3][4].symbol,
      @board.board[:row4][3].symbol,
      @board.board[:row5][2].symbol,
      @board.board[:row6][1].symbol
    ]

    diagonal_win_19 = [
      @board.board[:row1][5].symbol,
      @board.board[:row2][4].symbol,
      @board.board[:row3][3].symbol,
      @board.board[:row4][2].symbol
    ]

    diagonal_win_20 = [
      @board.board[:row2][4].symbol,
      @board.board[:row3][3].symbol,
      @board.board[:row4][2].symbol,
      @board.board[:row5][1].symbol
    ]

    diagonal_win_21 = [
      @board.board[:row3][3].symbol,
      @board.board[:row4][2].symbol,
      @board.board[:row5][1].symbol,
      @board.board[:row6][0].symbol
    ]

    diagonal_win_22 = [
      @board.board[:row1][4].symbol,
      @board.board[:row2][3].symbol,
      @board.board[:row3][2].symbol,
      @board.board[:row4][1].symbol
    ]

    diagonal_win_23 = [
      @board.board[:row2][3].symbol,
      @board.board[:row3][2].symbol,
      @board.board[:row4][1].symbol,
      @board.board[:row5][0].symbol
    ]

    diagonal_win_24 = [
      @board.board[:row1][3].symbol,
      @board.board[:row2][2].symbol,
      @board.board[:row3][1].symbol,
      @board.board[:row4][0].symbol
    ]

    if diagonal_win_1== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_2== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_3== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_4== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_5== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_6== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_7== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_8== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_9== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_10== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_11== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_12== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_13== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_14== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_15== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_16== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_17== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_18== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_19== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_20== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_21== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_22== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_23== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif diagonal_win_24== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    end

    if diagonal_win_1== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_2== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_3== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_4== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_5== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_6== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_7== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_8== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_9== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_10== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_11== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_12== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_13== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_14== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_15== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_16== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_17== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_18== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_19== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_20== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_21== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_22== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_23== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    elsif diagonal_win_24== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @player.has_won = true
    end
  end
end
