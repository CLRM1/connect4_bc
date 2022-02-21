
class Space
  attr_accessor :is_empty, :symbol
  def initialize
    @symbol = '.'
  end

  def is_empty?
    @symbol == '.'
  end

  def add_piece(symbol)
    @symbol = symbol
  end
end
