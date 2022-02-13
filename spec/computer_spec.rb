require 'rspec'
require './lib/player'
require './lib/board'
require './lib/space'
require './lib/computer'

describe Computer do
  it "exists" do
    board = Board.new
    computer = Computer.new(board)
    expect(computer).to be_an_instance_of(Computer)
  end

  it "has attributes" do
    board = Board.new
    computer = Computer.new(board)
    expect(computer.has_won).to be(false)
  end

  it "can add a piece randomly" do
    board = Board.new
    computer = Computer.new(board)
    10.times do
      computer.add_piece
    end
    symbols = []
    board.rows.drop(1).each do |rows, spaces|
      symbols << spaces.map do |space|
        space.symbol
      end
    end
    symbols.flatten!
    expect(symbols.all?('.')).to be(false)
    o_symbols = 0
    symbols.find_all do |cell|
      if cell == 'O'
        o_symbols +=1
      end
    end
    expect(o_symbols).to eq(10)
  end

end
