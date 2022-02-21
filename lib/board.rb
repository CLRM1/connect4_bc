require_relative 'space'
require 'pry'
class Board

attr_reader :rows
# the board is designed so it only needs to be initialized 1 time, then it can be passed as a parameter to a Player, Computer, and Win_checker.
  def initialize
    @rows = [
      [Space.new, Space.new, Space.new, Space.new, Space.new, Space.new, Space.new],
      [Space.new, Space.new, Space.new, Space.new, Space.new, Space.new, Space.new],
      [Space.new, Space.new, Space.new, Space.new, Space.new, Space.new, Space.new],
      [Space.new, Space.new, Space.new, Space.new, Space.new, Space.new, Space.new],
      [Space.new, Space.new, Space.new, Space.new, Space.new, Space.new, Space.new],
      [Space.new, Space.new, Space.new, Space.new, Space.new, Space.new, Space.new]
    ]
  end

  def columns
    ['A', 'B', 'C', 'D', 'E', 'F', 'G']
  end
# print_board calls the "symbol" method on each Space, and stores the value into updated_board.
  def print_board
    puts columns.join(' ')
    @rows.each do |spaces|
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

  def is_valid_column?(choice)
    if columns.include?(choice.upcase)
      true
    else
      p "Invalid selection. Please choose from (ABCDEFG)"
      false
    end
  end

  def add_piece(symbol, column)
    if is_valid_column?(column)
      column = columns.find_index(column)
      @rows.reverse.each do |row|
        if row[column].is_empty?
          row[column].symbol = symbol
          break
        end
      end
    end
  end

end
# binding.pry
