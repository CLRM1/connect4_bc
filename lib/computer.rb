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
    check_horizontal_wins
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
    end
  end

  def check_horizontal_wins
    row6_moves = []
    row5_moves = []
    row4_moves = []
    row3_moves = []
    row2_moves = []
    row1_moves = []

    @board.board[:row6].each do |cell|
      row6_moves << cell.symbol
    end

    if row6_moves[0..3] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row6_moves[1..4] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row6_moves[2..5] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row6_moves[3..6] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row6_moves[4..7] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    end

    @board.board[:row5].each do |cell|
      row5_moves << cell.symbol
    end

    if row5_moves[0..3] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row5_moves[1..4] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row5_moves[2..5] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row5_moves[3..6] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row5_moves[4..7] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    end

    @board.board[:row4].each do |cell|
      row4_moves << cell.symbol
    end

    if row4_moves[0..3] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row4_moves[1..4] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row4_moves[2..5] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row4_moves[3..6] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row4_moves[4..7] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    end

    @board.board[:row3].each do |cell|
      row3_moves << cell.symbol
    end

    if row3_moves[0..3] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row3_moves[1..4] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row3_moves[2..5] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row3_moves[3..6] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row3_moves[4..7] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    end

    @board.board[:row2].each do |cell|
      row2_moves << cell.symbol
    end

    if row2_moves[0..3] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row2_moves[1..4] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row2_moves[2..5] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row2_moves[3..6] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row2_moves[4..7] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    end

    @board.board[:row1].each do |cell|
      row1_moves << cell.symbol
    end

    if row1_moves[0..3] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row1_moves[1..4] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row1_moves[2..5] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row1_moves[3..6] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    elsif row1_moves[4..7] == ['O', 'O', 'O', 'O']
      puts "Computer wins!!"
      @has_won = true
    end
  end

end
