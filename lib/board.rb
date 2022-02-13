require 'pry'
require './lib/space'
require './lib/player'
class Board
attr_reader :rows, :player1, :player2
# the board is designed so it only needs to be initialized 1 time, then it can be passed as a parameter to a Player, Computer, and Win_checker.
  def initialize
    @player1 = player1
    @player2 = player2
    @rows = {
      :row0 => ['A', 'B', 'C', 'D', 'E', 'F', 'G'],
      :row1 => [Space.new, Space.new, Space.new, Space.new, Space.new, Space.new, Space.new],
      :row2 => [Space.new, Space.new, Space.new, Space.new, Space.new, Space.new, Space.new],
      :row3 => [Space.new, Space.new, Space.new, Space.new, Space.new, Space.new, Space.new],
      :row4 => [Space.new, Space.new, Space.new, Space.new, Space.new, Space.new, Space.new],
      :row5 => [Space.new, Space.new, Space.new, Space.new, Space.new, Space.new, Space.new],
      :row6 => [Space.new, Space.new, Space.new, Space.new, Space.new, Space.new, Space.new]
    }
  end
# print_board calls the "symbol" method on each Space, and stores the value into updated_board.
  def print_board
    puts @rows[:row0].join(' ')
    @rows.drop(1).each do |row, spaces|
      updated_board = spaces.map do |space|
        space.symbol
      end
      puts updated_board.join(' ')
    end
  end

  def menu
    puts "***Main Menu***"
    puts " "
    puts "Enter p to play. Enter q to quit."
    answer = gets.chomp
    answer
  end

end
