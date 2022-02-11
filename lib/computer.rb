require './lib/player'
require './lib/board'
require './lib/space'


class Computer
attr_accessor :board, :has_won

  def initialize(board)
    @board = board
    @has_won = false
  end



  def has_won?
    return @has_won
  end

  def add_piece
    selections = ['A', 'B', 'C', 'D', 'E', 'F', 'G']
    selection = selections.sample
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
      if @board.board[:row6][selection].is_empty?
        board.board[:row6][selection].is_empty = false
        board.board[:row6][selection].symbol = 'O'

      elsif @board.board[:row5][selection].is_empty?
        board.board[:row5][selection].is_empty = false
        board.board[:row5][selection].symbol = 'O'

      elsif @board.board[:row4][selection].is_empty?
        board.board[:row4][selection].is_empty = false
        board.board[:row4][selection].symbol = 'O'

      elsif @board.board[:row3][selection].is_empty?
        board.board[:row3][selection].is_empty = false
        board.board[:row3][selection].symbol = 'O'

      elsif @board.board[:row2][selection].is_empty?
        board.board[:row2][selection].is_empty = false
        board.board[:row2][selection].symbol = 'O'

      elsif @board.board[:row1][selection].is_empty?
        board.board[:row1][selection].is_empty = false
        board.board[:row1][selection].symbol = 'O'
      else
        add_piece
      end
      # @board.print_board
    end
  end


end
