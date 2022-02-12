require 'pry'
require './lib/space'
require './lib/player'
class Board
attr_reader :board

  def initialize
    @board = {
      :row0 => ['A', 'B', 'C', 'D', 'E', 'F', 'G'],
      :row1 => [Space.new('a1'), Space.new('b1'), Space.new('c1'), Space.new('d1'), Space.new('e1'), Space.new('f1'), Space.new('g1')],
      :row2 => [Space.new('a2'), Space.new('b2'), Space.new('c2'), Space.new('d2'), Space.new('e2'), Space.new('f2'), Space.new('g2')],
      :row3 => [Space.new('a3'), Space.new('b3'), Space.new('c3'), Space.new('d3'), Space.new('e3'), Space.new('f3'), Space.new('g3')],
      :row4 => [Space.new('a4'), Space.new('b4'), Space.new('c4'), Space.new('d4'), Space.new('e4'), Space.new('f4'), Space.new('g4')],
      :row5 => [Space.new('a5'), Space.new('b5'), Space.new('c5'), Space.new('d5'), Space.new('e5'), Space.new('f5'), Space.new('g5')],
      :row6 => [Space.new('a6'), Space.new('b6'), Space.new('c6'), Space.new('d6'), Space.new('e6'), Space.new('f6'), Space.new('g6')]
    }
  end

  def print_board
    puts @board[:row0].join(' ')
    @board.drop(1).each do |row, spaces|
      sym_holder = []
      spaces.each do |space|
        sym_holder << space.symbol
      end
      puts sym_holder.join(' ')
    end
  end

  def menu
    puts "***Main Menu***"
    puts " "
    puts "Enter p to play. Enter q to quit."
    answer = gets.chomp
    answer
  end

  def print_welcome
    puts "Welcome to connect 4!"
    puts "Select a column (ABCDEFG)"
    puts " "
  end
end
