require 'rspec'
require './lib/board'

describe Board do

  describe '# Initialize' do
    it "exists" do
      board = Board.new
      expect(board).to be_an_instance_of(Board)
    end

    it "contains an empty board board" do
      board = Board.new
      expect(board.rows[:row0]).to eq(['A', 'B', 'C', 'D', 'E', 'F', 'G'])
      symbols = []
      board.rows.drop(1).each do |row, cells|
        cells.each do |cell|
          symbols << cell.symbol
        end
      end
      symbols.flatten
      expect(symbols.all?('.')).to be(true)

    end
  end

  describe '# Print board' do
    it 'prints an empty board board' do
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

end
