require 'rspec'
require './lib/board'

describe Board do

  describe '# Initialize' do
    it "exists" do
      board = Board.new
      expect(board).to be_an_instance_of(Board)
    end

    it "contains an empty board" do
      board = Board.new
      symbols = []
      board.rows.each do |row|
        symbols << row.map do |space|
          space.symbol
        end
      end
      symbols.flatten!
      expect(symbols.all?('.')).to be(true)
    end
  end

  describe '# Print board' do
    it 'prints an empty board' do
      board = Board.new
      symbols = []
      board.rows.each do |row|
        symbols << row.map do |space|
          space.symbol
        end
      end
      symbols.flatten!
      expect(symbols.all?('.')).to be(true)
    end

  end

  describe 'add_piece' do
    it 'places a piece in the given column' do
      board = Board.new
      board.add_piece("X", "A")

      expect(board.rows[5][0].symbol).to eq("X")
      expect(board.rows[4][0].symbol).to eq(".")
    end

    it "can place the piece again" do
      board = Board.new
      board.add_piece("X", "A")
      board.add_piece("X", "A")

      expect(board.rows[5][0].symbol).to eq("X")
      expect(board.rows[4][0].symbol).to eq("X")
    end

    it 'cannot place a piece in an invalid column' do
      board = Board.new
      board.add_piece("X", "Z")
      symbols = []
      board.rows.each do |row|
        symbols << row.map do |space|
          space.symbol
        end
      end
      symbols.flatten!
      expect(symbols.all?('.')).to be(true)
    end
  end

end
