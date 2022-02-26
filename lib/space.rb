require './lib/board'
require './lib/player'
class Space
  attr_accessor :is_empty, :symbol
  def initialize
    @is_empty = true
    # update to value, symbol is a loaded word here (:)
    @symbol = '.'
  end

  def is_empty?
    return @is_empty
  end
end
