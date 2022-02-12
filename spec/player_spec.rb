require 'rspec'
require './lib/board'
require './lib/player'

describe Player do
  describe 'add_piece' do
    it "exists" do
      board = Board.new
      user_player = Player.new(board)
      expect(user_player).to be_an_instance_of(Player)
    end

    it "has attributes" do
      board = Board.new
      user_player = Player.new(board)
      expect(user_player.has_won).to be(false)
    end

    it 'places a piece in the given row' do
      board = Board.new
      user_player = Player.new(board)
      user_player.board.print_board
      user_player.add_piece('A')
      spot_1 = user_player.board.board[:row6][0]
      spot_2 = user_player.board.board[:row6][1]
      spot_3 = user_player.board.board[:row6][2]
      spot_4 = user_player.board.board[:row6][3]
      spot_5 = user_player.board.board[:row6][4]
      spot_6 = user_player.board.board[:row6][5]
      spot_7 = user_player.board.board[:row6][6]
      expect(spot_1.symbol).to eq('X')
    end

    it "can tell if the row is invalid" do
      board = Board.new
      user_player = Player.new(board)
      # user_player.board.print_board
      # spot_1 = user_player.board.board[:row6][0]
      # spot_2 = user_player.board.board[:row6][1]
      # spot_3 = user_player.board.board[:row6][2]
      # spot_4 = user_player.board.board[:row6][3]
      # spot_5 = user_player.board.board[:row6][4]
      # spot_6 = user_player.board.board[:row6][5]
      # spot_7 = user_player.board.board[:row6][6]
      # expect(user_player.add_piece('Z')).to eq("Invalid column. Choose a column (ABCDEFG)")
      # expect(spot_1.symbol).to eq('.')
      # expect(spot_2.symbol).to eq('.')
      # expect(spot_3.symbol).to eq('.')
      # expect(spot_4.symbol).to eq('.')
      # expect(spot_5.symbol).to eq('.')
      # expect(spot_6.symbol).to eq('.')
      # expect(spot_7.symbol).to eq('.')
    end

  end
end
