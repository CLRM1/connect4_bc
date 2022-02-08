require 'pry'

class Game
attr_reader :board

  def initialize
    @board = "ABCDEFG\n.......\n.......\n.......\n.......\n.......\n......."
  end

  def start
    p "Welcome to connect 4!\n#{@board}"
    # p @board
  end


end
