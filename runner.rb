require './lib/board'
require './lib/player'
require './lib/space'
require './lib/computer'
require './lib/win_checker'
require 'pry'

game_count = 0
answer = "p or q"
while game_count >= 0
  board = Board.new

  player1 = Player.new(board)

  computer = Computer.new(board)

  win_checker = WinChecker.new(board, player1, computer)

  turn_counter = 0
  puts "Welcome to Connect 4!"
  puts " "
  answer = board.menu
  if answer.upcase == 'P'
    puts " "
    puts "Choose a column (ABCDEFG)"
    board.print_board
    until player1.has_won? || computer.has_won? || win_checker.is_a_draw? do

      player1.add_piece(gets.chomp)
      computer.add_piece

      turn_counter += 1
      puts " "
      puts "Round:#{turn_counter}"
      puts " "
      board.print_board
      win_checker.check_diagonal_wins
      win_checker.check_vertical_wins
      win_checker.check_horizontal_wins
    end

    5.times do
      puts " "
    end
    game_count += 1
  elsif answer.upcase == 'Q'
    puts "See you later!"
    break
  end

end
