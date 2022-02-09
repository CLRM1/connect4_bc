require 'pry'
require './lib/game'

class Player
    attr_accessor :game
  def initialize
    @game = Game.new
    # @input = gets.chomp
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
    if column <= 6
      if @game.board[:row6][column].is_empty?
        game.board[:row6][column].@is_empty = false
        game.board[:row6][column].symbol
      end
      return @game.board
    else
      "Choose a column (ABCDEFG)"
    end

  end
end
