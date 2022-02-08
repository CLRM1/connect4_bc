require 'pry'

class Game
attr_reader :board, :player1, :player2

  def initialize(player1, player2)
    # @board = "ABCDEFG\n.......\n.......\n.......\n.......\n.......\n......."
    @player1 = player1
    @player2 = player2
    @board = ['ABCDEFG', '.......', '.......', '.......', '.......', '.......', '.......']
  end

  def start
    puts "Welcome to connect 4!"
    @board.each do |line|
      puts line
    end
  end

end

# game = Game.new
# game.start
# binding.pry
