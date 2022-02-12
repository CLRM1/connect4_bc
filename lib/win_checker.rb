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

    if row6_moves[0..3].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row6_moves[1..4].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row6_moves[2..5].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row6_moves[3..6].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row6_moves[4..7].all?("X")
      puts "You win!!"
      @player.has_won = true
    end

    if row6_moves[0..3].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row6_moves[1..4].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row6_moves[2..5].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row6_moves[3..6].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row6_moves[4..7].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    end

  @board.board.drop(1).each do |row, first_element|
    row5_moves << first_element[1].symbol
  end

  if row5_moves[0..3].all?("X")
    puts "You win!!"
    @player.has_won = true
  elsif row5_moves[1..4].all?("X")
    puts "You win!!"
    @player.has_won = true
  elsif row5_moves[2..5].all?("X")
    puts "You win!!"
    @player.has_won = true
  elsif row5_moves[3..6].all?("X")
    puts "You win!!"
    @player.has_won = true
  elsif row5_moves[4..7].all?("X")
    puts "You win!!"
    @player.has_won = true
  end

  if row5_moves[0..3].all?("O")
    puts "Computer wins!!"
    @computer.has_won = true
  elsif row5_moves[1..4].all?("O")
    puts "Computer wins!!"
    @computer.has_won = true
  elsif row5_moves[2..5].all?("O")
    puts "Computer wins!!"
    @computer.has_won = true
  elsif row5_moves[3..6].all?("O")
    puts "Computer wins!!"
    @computer.has_won = true
  elsif row5_moves[4..7].all?("O")
    puts "Computer wins!!"
    @computer.has_won = true
  end

    @board.board.drop(1).each do |row, first_element|
      row4_moves << first_element[2].symbol
    end

    if row4_moves[0..3].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row4_moves[1..4].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row4_moves[2..5].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row4_moves[3..6].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row4_moves[4..7].all?("X")
      puts "You win!!"
      @player.has_won = true
    end

    if row4_moves[0..3].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row4_moves[1..4].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row4_moves[2..5].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row4_moves[3..6].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row4_moves[4..7].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    end

    @board.board.drop(1).each do |row, first_element|
      row3_moves << first_element[3].symbol
    end

    if row3_moves[0..3].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row3_moves[1..4].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row3_moves[2..5].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row3_moves[3..6].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row3_moves[4..7].all?("X")
      puts "You win!!"
      @player.has_won = true
    end

    if row3_moves[0..3].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row3_moves[1..4].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row3_moves[2..5].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row3_moves[3..6].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row3_moves[4..7].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    end

    @board.board.drop(1).each do |row, first_element|
      row2_moves << first_element[4].symbol
    end

    if row2_moves[0..3].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row2_moves[1..4].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row2_moves[2..5].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row2_moves[3..6].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row2_moves[4..7].all?("X")
      puts "You win!!"
      @player.has_won = true
    end

    if row2_moves[0..3].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row2_moves[1..4].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row2_moves[2..5].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row2_moves[3..6].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row2_moves[4..7].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    end

    @board.board.drop(1).each do |row, first_element|
      row1_moves << first_element[5].symbol
    end

    if row1_moves[0..3].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row1_moves[1..4].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row1_moves[2..5].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row1_moves[3..6].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row1_moves[4..7].all?("X")
      puts "You win!!"
      @player.has_won = true
    end

    if row1_moves[0..3].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row1_moves[1..4].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row1_moves[2..5].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row1_moves[3..6].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row1_moves[4..7].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    end

    @board.board.drop(1).each do |row, first_element|
      row0_moves << first_element[6].symbol
    end

    if row0_moves[0..3].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row0_moves[1..4].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row0_moves[2..5].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row0_moves[3..6].all?("X")
      puts "You win!!"
      @player.has_won = true
    elsif row0_moves[4..7].all?("X")
      puts "You win!!"
      @player.has_won = true
    end

    if row0_moves[0..3].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row0_moves[1..4].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row0_moves[2..5].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row0_moves[3..6].all?("O")
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row0_moves[4..7].all?("O")
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

    if row6_moves[0..3].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row6_moves[1..4].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row6_moves[2..5].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row6_moves[3..6].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row6_moves[4..7].all?('X')
      puts "You win!!"
      @player.has_won = true
    end

    if row6_moves[0..3].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row6_moves[1..4].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row6_moves[2..5].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row6_moves[3..6].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row6_moves[4..7].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    end

    @board.board[:row5].each do |cell|
      row5_moves << cell.symbol
    end

    if row5_moves[0..3].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row5_moves[1..4].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row5_moves[2..5].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row5_moves[3..6].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row5_moves[4..7].all?('X')
      puts "You win!!"
      @player.has_won = true
    end

    if row5_moves[0..3].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row5_moves[1..4].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row5_moves[2..5].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row5_moves[3..6].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row5_moves[4..7].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    end

    @board.board[:row4].each do |cell|
      row4_moves << cell.symbol
    end

    if row4_moves[0..3].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row4_moves[1..4].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row4_moves[2..5].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row4_moves[3..6].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row4_moves[4..7].all?('X')
      puts "You win!!"
      @player.has_won = true
    end

    if row4_moves[0..3].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row4_moves[1..4].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row4_moves[2..5].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row4_moves[3..6].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row4_moves[4..7].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    end

    @board.board[:row3].each do |cell|
      row3_moves << cell.symbol
    end

    if row3_moves[0..3].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row3_moves[1..4].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row3_moves[2..5].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row3_moves[3..6].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row3_moves[4..7].all?('X')
      puts "You win!!"
      @player.has_won = true
    end

    if row3_moves[0..3].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row3_moves[1..4].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row3_moves[2..5].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row3_moves[3..6].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row3_moves[4..7].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    end

    @board.board[:row2].each do |cell|
      row2_moves << cell.symbol
    end

    if row2_moves[0..3].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row2_moves[1..4].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row2_moves[2..5].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row2_moves[3..6].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row2_moves[4..7].all?('X')
      puts "You win!!"
      @player.has_won = true
    end

    if row2_moves[0..3].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row2_moves[1..4].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row2_moves[2..5].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row2_moves[3..6].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row2_moves[4..7].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    end

    @board.board[:row1].each do |cell|
      row1_moves << cell.symbol
    end

    if row1_moves[0..3].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row1_moves[1..4].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row1_moves[2..5].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row1_moves[3..6].all?('X')
      puts "You win!!"
      @player.has_won = true
    elsif row1_moves[4..7].all?('X')
      puts "You win!!"
      @player.has_won = true
    end

    if row1_moves[0..3].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row1_moves[1..4].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row1_moves[2..5].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row1_moves[3..6].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    elsif row1_moves[4..7].all?('O')
      puts "Computer wins!!"
      @computer.has_won = true
    end
  end
end
binding.pry
