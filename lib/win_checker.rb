require './lib/board'
require './lib/player'
require './lib/space'
require './lib/computer'
require 'pry'
class WinChecker
  attr_reader :board
  attr_accessor :is_a_draw
  def initialize(board)
    @board = board
    @is_a_draw = false
  end

  def is_a_draw?
    symbols = []
    @board.board.each do |row|
      row.each do |row, spaces|
        symbols << spaces.map do |space|
          space.symbol
        end
      end
    end

  end

end
binding.pry
