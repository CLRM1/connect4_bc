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
    xit 'prints an empty board' do
      board = Board.new
      row1_syms = []
      row2_syms = []
      row3_syms = []
      row4_syms = []
      row5_syms = []
      row6_syms = []
      board.rows[:row1].each do |space|
        row1_syms << space.symbol
      end
      board.rows[:row2].each do |space|
        row2_syms << space.symbol
      end
      board.rows[:row3].each do |space|
        row3_syms << space.symbol
      end
      board.rows[:row4].each do |space|
        row4_syms << space.symbol
      end
      board.rows[:row5].each do |space|
        row5_syms << space.symbol
      end
      board.rows[:row5].each do |space|
        row6_syms << space.symbol
      end
      expect(row1_syms).to eq(['.', '.', '.', '.', '.', '.', '.'])
      expect(row2_syms).to eq(['.', '.', '.', '.', '.', '.', '.'])
      expect(row3_syms).to eq(['.', '.', '.', '.', '.', '.', '.'])
      expect(row4_syms).to eq(['.', '.', '.', '.', '.', '.', '.'])
      expect(row5_syms).to eq(['.', '.', '.', '.', '.', '.', '.'])
      expect(row6_syms).to eq(['.', '.', '.', '.', '.', '.', '.'])
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

  end

end
