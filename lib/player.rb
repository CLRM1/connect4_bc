require 'pry'
require './lib/game'

class Player
    attr_accessor :game
  def initialize
    @game = Game.new
  end

  def add_piece(column)
    if 'ABCDEFG'.include?(column)
        @game.board[:row6][0] = 'X'
    end

  end
end
