require './lib/game'
require './lib/player'
require './lib/space'
require 'pry'


game = Game.new

game.print_welcome

game.print_board

player1 = Player.new(game)

player1.add_piece(gets.chomp)
