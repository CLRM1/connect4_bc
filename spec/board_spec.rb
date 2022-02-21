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
      row1_syms = []
      row2_syms = []
      row3_syms = []
      row4_syms = []
      row5_syms = []
      row6_syms = []
      symbols = [row1_syms, row2_syms, row3_syms, row4_syms, row5_syms, row6_syms].flatten
      board.rows[0].each do |space|
        row1_syms << space.symbol
      end
      board.rows[1].each do |space|
        row2_syms << space.symbol
      end
      board.rows[2].each do |space|
        row3_syms << space.symbol
      end
      board.rows[3].each do |space|
        row4_syms << space.symbol
      end
      board.rows[4].each do |space|
        row5_syms << space.symbol
      end
      board.rows[5].each do |space|
        row6_syms << space.symbol
      end
      expect(symbols.all?(".")).to be true
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
      expect(board.add_piece("X", "Z")).to eq("Invalid selection. Please choose from (ABCDEFG)")
    end
  end

end
