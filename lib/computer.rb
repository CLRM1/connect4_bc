
require './lib/player'
require './lib/game'
require './lib/space'


class Computer
attr_accessor :game, :has_won

  def initialize(game)
    @game = game
    @has_won = false
  end

  def has_won?
    return @has_won
  end

  def add_piece
    columns = ['A', 'B', 'C', 'D', 'E', 'F', 'G']
    selection = columns.sample
    if selection.upcase == 'A'
      selection = 0
    elsif selection.upcase == 'B'
      selection = 1
    elsif selection.upcase == 'C'
      selection = 2
    elsif selection.upcase == 'D'
      selection = 3
    elsif selection.upcase == 'E'
      selection = 4
    elsif selection.upcase == 'F'
      selection = 5
    elsif selection.upcase == 'G'
      selection = 6
    end

    if selection.class != Integer
      add_piece
    elsif selection <= 6
      if @game.board[:row6][selection].is_empty?
        game.board[:row6][selection].is_empty = false

      elsif @game.board[:row5][selection].is_empty?
        game.board[:row5][selection].is_empty = false

      elsif @game.board[:row4][selection].is_empty?
        game.board[:row4][selection].is_empty = false

      elsif @game.board[:row3][selection].is_empty?
        game.board[:row3][selection].is_empty = false

      elsif @game.board[:row2][selection].is_empty?
        game.board[:row2][selection].is_empty = false

      elsif @game.board[:row1][selection].is_empty?
        game.board[:row1][selection].is_empty = false
      else
        puts "selection is full. Choose another"
      end
      # @game.print_board
    end
  end

end
