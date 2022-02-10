require 'pry'
require './lib/game'

class Player
    attr_accessor :game, :has_won
  # def initialize
  #   @game = Game.new
  #   # @input = gets.chomp
  # end

  def initialize(game)
    @game = game
    @has_won = false
  end

  def has_won?
    return @has_won
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

    if column.class != Integer
      puts "Invalid column. Choose a column (ABCDEFG)"
    elsif column <= 6
      if @game.board[:row6][column].is_empty?
        game.board[:row6][column].is_empty = false

      elsif @game.board[:row5][column].is_empty?
        game.board[:row5][column].is_empty = false

      elsif @game.board[:row4][column].is_empty?
        game.board[:row4][column].is_empty = false

      elsif @game.board[:row3][column].is_empty?
        game.board[:row3][column].is_empty = false

      elsif @game.board[:row2][column].is_empty?
        game.board[:row2][column].is_empty = false

      elsif @game.board[:row1][column].is_empty?
        game.board[:row1][column].is_empty = false
      else
        puts "Column is full. Choose another"
      end
      # @game.print_board
    end
  end

end

# binding.pry
