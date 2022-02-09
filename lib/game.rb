require 'pry'
require './lib/game'
require './lib/space'
class Game
attr_reader :board, :player1, :player2

  def initialize
    # @board = "ABCDEFG\n.......\n.......\n.......\n.......\n.......\n......."
    @player1 = player1
    @player2 = player2
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

  def start
    puts "Welcome to connect 4!"
    @board.each do |line|
      puts line.join(' ')
    end
  end

end

# game = Game.new
# game.start
# binding.pry
