require 'pry'

class Game
attr_reader :board

  def initialize
    # @board = "ABCDEFG\n.......\n.......\n.......\n.......\n.......\n......."
    @board = ["ABCDEFG", ".......", ".......", ".......", ".......", ".......", "......."]
  end

  def start
    p "Welcome to connect 4!"
    @board.each do |line|
      p line
    end
  end


end

game = Game.new
game.start
# binding.pry
