require './lib/board'
require './lib/player'
require './lib/space'
require './lib/computer'
# WinChecker is given a board, player, and computer in order to be able to read the Spaces, and change the value of has_won?
class WinChecker
  attr_reader :board
  attr_accessor :player, :computer
  def initialize(board, player, computer)
    @player = player
    @computer = computer
    @board = board
  end
  # is_a_draw? will only return true if there are NO '.' on the board
  def is_a_draw?
    symbols = []
    @board.rows.each do |spaces|
      symbols << spaces.map do |space|
        space.symbol
      end
    end
    symbols.flatten!

    if symbols.none?('.')
      true
      return "It's a draw!!"
    else
      false
    end

  end
  # check_vertical_wins runs through each row of each column and stores their symbols into a designated array.
  # it then checks if their are 4 Xs or 4 Os in a row
  def check_vertical_wins
    columnA_moves = []
    columnB_moves = []
    columnC_moves = []
    columnD_moves = []
    columnE_moves = []
    columnF_moves = []
    columnG_moves = []

    @board.rows.each do |first_element|
      columnA_moves << first_element[0].symbol
    end

    if columnA_moves[0..3]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnA_moves[1..4]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnA_moves[2..5]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnA_moves[3..6]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnA_moves[4..7]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnA_moves[0..3]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnA_moves[1..4]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnA_moves[2..5]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnA_moves[3..6]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnA_moves[4..7]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    end

  @board.rows.each do |first_element|
    columnB_moves << first_element[1].symbol
  end

  if columnB_moves[0..3]== ['X', 'X', 'X', 'X']
    puts "You win!!"
    @player.has_won = true
  elsif columnB_moves[1..4]== ['X', 'X', 'X', 'X']
    puts "You win!!"
    @player.has_won = true
  elsif columnB_moves[2..5]== ['X', 'X', 'X', 'X']
    puts "You win!!"
    @player.has_won = true
  elsif columnB_moves[3..6]== ['X', 'X', 'X', 'X']
    puts "You win!!"
    @player.has_won = true
  elsif columnB_moves[4..7]== ['X', 'X', 'X', 'X']
    puts "You win!!"
    @player.has_won = true
  elsif columnB_moves[0..3]== ['O', 'O', 'O', 'O']
    puts "Computer wins!!"
    @computer.has_won = true
  elsif columnB_moves[1..4]== ['O', 'O', 'O', 'O']
    puts "Computer wins!!"
    @computer.has_won = true
  elsif columnB_moves[2..5]== ['O', 'O', 'O', 'O']
    puts "Computer wins!!"
    @computer.has_won = true
  elsif columnB_moves[3..6]== ['O', 'O', 'O', 'O']
    puts "Computer wins!!"
    @computer.has_won = true
  elsif columnB_moves[4..7]== ['O', 'O', 'O', 'O']
    puts "Computer wins!!"
    @computer.has_won = true
  end

    @board.rows.each do |first_element|
      columnC_moves << first_element[2].symbol
    end

    if columnC_moves[0..3]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnC_moves[1..4]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnC_moves[2..5]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnC_moves[3..6]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnC_moves[4..7]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnC_moves[0..3]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnC_moves[1..4]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnC_moves[2..5]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnC_moves[3..6]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnC_moves[4..7]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    end

    @board.rows.each do |first_element|
      columnD_moves << first_element[3].symbol
    end

    if columnD_moves[0..3]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnD_moves[1..4]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnD_moves[2..5]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnD_moves[3..6]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnD_moves[4..7]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnD_moves[0..3]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnD_moves[1..4]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnD_moves[2..5]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnD_moves[3..6]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnD_moves[4..7]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    end

    @board.rows.each do |first_element|
      columnE_moves << first_element[4].symbol
    end

    if columnE_moves[0..3]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnE_moves[1..4]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnE_moves[2..5]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnE_moves[3..6]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnE_moves[4..7]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnE_moves[0..3]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnE_moves[1..4]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnE_moves[2..5]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnE_moves[3..6]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnE_moves[4..7]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    end

    @board.rows.each do |first_element|
      columnF_moves << first_element[5].symbol
    end

    if columnF_moves[0..3]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnF_moves[1..4]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnF_moves[2..5]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnF_moves[3..6]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnF_moves[4..7]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnF_moves[0..3]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnF_moves[1..4]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnF_moves[2..5]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnF_moves[3..6]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnF_moves[4..7]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    end

    @board.rows.each do |first_element|
      columnG_moves << first_element[6].symbol
    end

    if columnG_moves[0..3]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnG_moves[1..4]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnG_moves[2..5]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnG_moves[3..6]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnG_moves[4..7]== ['X', 'X', 'X', 'X']
      puts "You win!!"
      @player.has_won = true
    elsif columnG_moves[0..3]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnG_moves[1..4]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnG_moves[2..5]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnG_moves[3..6]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    elsif columnG_moves[4..7]== ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @computer.has_won = true
    end
  end
  # check_horizontal_wins works about the same way as check_vertical_wins.
  def check_horizontal_wins
    row6_moves = []
    row5_moves = []
    row4_moves = []
    row3_moves = []
    row2_moves = []
    row1_moves = []

    @board.rows[5].each do |cell|
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
    elsif row6_moves[0..3]== ['O', 'O', 'O', 'O']
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

    @board.rows[4].each do |cell|
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
    elsif row5_moves[0..3]== ['O', 'O', 'O', 'O']
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

    @board.rows[3].each do |cell|
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
    elsif row4_moves[0..3]== ['O', 'O', 'O', 'O']
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

    @board.rows[2].each do |cell|
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
    elsif row3_moves[0..3]== ['O', 'O', 'O', 'O']
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

    @board.rows[1].each do |cell|
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
    elsif row2_moves[0..3]== ['O', 'O', 'O', 'O']
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

    @board.rows[0].each do |cell|
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
    elsif row1_moves[0..3]== ['O', 'O', 'O', 'O']
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
  # check_diagonal wins has a hard coded array of every possible diagonal win. Not ideal but i have yet to figure out how to use an
  # enumerator to do this.
  # It then uses the same logic as the last 2 methods to check for 4 in a row.
  # def check_diagonal_wins
  #   diagonal_win_1 = [
  #     @board.rows[:row1][0].symbol,
  #     @board.rows[:row2][1].symbol,
  #     @board.rows[:row3][2].symbol,
  #     @board.rows[:row4][3].symbol,
  #   ]
  #
  #   diagonal_win_2 = [
  #     @board.rows[:row2][1].symbol,
  #     @board.rows[:row3][2].symbol,
  #     @board.rows[:row4][3].symbol,
  #     @board.rows[:row5][4].symbol
  #   ]
  #
  #   diagonal_win_3 = [
  #     @board.rows[:row3][2].symbol,
  #     @board.rows[:row4][3].symbol,
  #     @board.rows[:row5][4].symbol,
  #     @board.rows[:row6][5].symbol,
  #   ]
  #
  #   diagonal_win_4 = [
  #     @board.rows[:row1][1].symbol,
  #     @board.rows[:row2][2].symbol,
  #     @board.rows[:row3][3].symbol,
  #     @board.rows[:row4][4].symbol
  #   ]
  #
  #   diagonal_win_5 = [
  #     @board.rows[:row2][2].symbol,
  #     @board.rows[:row3][3].symbol,
  #     @board.rows[:row4][4].symbol,
  #     @board.rows[:row5][5].symbol
  #   ]
  #
  #   diagonal_win_6 = [
  #     @board.rows[:row3][3].symbol,
  #     @board.rows[:row4][4].symbol,
  #     @board.rows[:row5][5].symbol,
  #     @board.rows[:row6][6].symbol
  #   ]
  #
  #   diagonal_win_7 = [
  #     @board.rows[:row1][2].symbol,
  #     @board.rows[:row2][3].symbol,
  #     @board.rows[:row3][4].symbol,
  #     @board.rows[:row4][5].symbol
  #   ]
  #
  #   diagonal_win_8 = [
  #     @board.rows[:row2][3].symbol,
  #     @board.rows[:row3][4].symbol,
  #     @board.rows[:row4][5].symbol,
  #     @board.rows[:row5][6].symbol
  #   ]
  #
  #   diagonal_win_9 = [
  #     @board.rows[:row1][3].symbol,
  #     @board.rows[:row2][4].symbol,
  #     @board.rows[:row3][5].symbol,
  #     @board.rows[:row4][6].symbol
  #   ]
  #
  #   diagonal_win_10 = [
  #     @board.rows[:row2][0].symbol,
  #     @board.rows[:row3][1].symbol,
  #     @board.rows[:row4][2].symbol,
  #     @board.rows[:row5][3].symbol
  #   ]
  #
  #   diagonal_win_11 = [
  #     @board.rows[:row3][1].symbol,
  #     @board.rows[:row4][2].symbol,
  #     @board.rows[:row5][3].symbol,
  #     @board.rows[:row6][4].symbol
  #   ]
  #
  #   diagonal_win_12 = [
  #     @board.rows[:row3][0].symbol,
  #     @board.rows[:row4][1].symbol,
  #     @board.rows[:row5][2].symbol,
  #     @board.rows[:row6][3].symbol
  #   ]
  #
  #   diagonal_win_13 = [
  #     @board.rows[:row3][6].symbol,
  #     @board.rows[:row4][5].symbol,
  #     @board.rows[:row5][4].symbol,
  #     @board.rows[:row6][3].symbol
  #   ]
  #
  #   diagonal_win_14 = [
  #     @board.rows[:row2][6].symbol,
  #     @board.rows[:row3][5].symbol,
  #     @board.rows[:row4][4].symbol,
  #     @board.rows[:row5][3].symbol
  #   ]
  #
  #   diagonal_win_15 = [
  #     @board.rows[:row3][5].symbol,
  #     @board.rows[:row4][4].symbol,
  #     @board.rows[:row5][3].symbol,
  #     @board.rows[:row6][2].symbol
  #   ]
  #
  #   diagonal_win_16 = [
  #     @board.rows[:row1][6].symbol,
  #     @board.rows[:row2][5].symbol,
  #     @board.rows[:row3][4].symbol,
  #     @board.rows[:row4][3].symbol
  #   ]
  #
  #   diagonal_win_17 = [
  #     @board.rows[:row2][5].symbol,
  #     @board.rows[:row3][4].symbol,
  #     @board.rows[:row4][3].symbol,
  #     @board.rows[:row5][2].symbol
  #   ]
  #
  #   diagonal_win_18 = [
  #     @board.rows[:row3][4].symbol,
  #     @board.rows[:row4][3].symbol,
  #     @board.rows[:row5][2].symbol,
  #     @board.rows[:row6][1].symbol
  #   ]
  #
  #   diagonal_win_19 = [
  #     @board.rows[:row1][5].symbol,
  #     @board.rows[:row2][4].symbol,
  #     @board.rows[:row3][3].symbol,
  #     @board.rows[:row4][2].symbol
  #   ]
  #
  #   diagonal_win_20 = [
  #     @board.rows[:row2][4].symbol,
  #     @board.rows[:row3][3].symbol,
  #     @board.rows[:row4][2].symbol,
  #     @board.rows[:row5][1].symbol
  #   ]
  #
  #   diagonal_win_21 = [
  #     @board.rows[:row3][3].symbol,
  #     @board.rows[:row4][2].symbol,
  #     @board.rows[:row5][1].symbol,
  #     @board.rows[:row6][0].symbol
  #   ]
  #
  #   diagonal_win_22 = [
  #     @board.rows[:row1][4].symbol,
  #     @board.rows[:row2][3].symbol,
  #     @board.rows[:row3][2].symbol,
  #     @board.rows[:row4][1].symbol
  #   ]
  #
  #   diagonal_win_23 = [
  #     @board.rows[:row2][3].symbol,
  #     @board.rows[:row3][2].symbol,
  #     @board.rows[:row4][1].symbol,
  #     @board.rows[:row5][0].symbol
  #   ]
  #
  #   diagonal_win_24 = [
  #     @board.rows[:row1][3].symbol,
  #     @board.rows[:row2][2].symbol,
  #     @board.rows[:row3][1].symbol,
  #     @board.rows[:row4][0].symbol
  #   ]
  #
  #   if diagonal_win_1== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_2== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_3== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_4== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_5== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_6== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_7== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_8== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_9== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_10== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_11== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_12== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_13== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_14== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_15== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_16== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_17== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_18== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_19== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_20== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_21== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_22== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_23== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_24== ['X', 'X', 'X', 'X']
  #     puts "You win!!"
  #     @player.has_won = true
  #   elsif diagonal_win_1== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_2== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_3== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_4== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_5== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_6== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_7== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_8== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_9== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_10== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_11== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_12== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_13== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_14== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_15== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_16== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_17== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_18== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_19== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_20== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_21== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_22== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_23== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   elsif diagonal_win_24== ['O', 'O', 'O', 'O']
  #     puts "Computer wins!!"
  #     @computer.has_won = true
  #   end
  # end
end
