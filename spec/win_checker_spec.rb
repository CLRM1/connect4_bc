require './lib/board'
require './lib/player'
require './lib/space'
require './lib/computer'
require './lib/win_checker'
require 'rspec'

describe WinChecker do
  it "exists" do
    board = Board.new
    player = Player.new(board)
    computer = Computer.new(board)
    game_status = WinChecker.new(board, player, computer)
    expect(game_status).to be_an_instance_of(WinChecker)
  end

  it "can determine a vertical win" do
    board = Board.new
    user_player = Player.new(board)
    computer = Computer.new(board)
    game_status = WinChecker.new(board, user_player, computer)
    user_player.add_piece('A')
    user_player.add_piece('A')
    user_player.add_piece('A')
    user_player.add_piece('A')
    spot_1 = user_player.board.rows[:row6][0]
    spot_2 = user_player.board.rows[:row5][0]
    spot_3 = user_player.board.rows[:row4][0]
    spot_4 = user_player.board.rows[:row3][0]
    spot_5 = user_player.board.rows[:row2][0]
    spot_6 = user_player.board.rows[:row1][0]
    expect(spot_1.symbol).to eq('X')
    expect(spot_2.symbol).to eq('X')
    expect(spot_3.symbol).to eq('X')
    expect(spot_4.symbol).to eq('X')
    expect(spot_5.symbol).to eq('.')
    game_status.check_vertical_wins
    expect(user_player.has_won).to be(true)
  end

  it "can determine a horizontal win" do
    board = Board.new
    user_player = Player.new(board)
    computer = Computer.new(board)
    game_status = WinChecker.new(board, user_player, computer)
    user_player.add_piece('A')
    user_player.add_piece('B')
    user_player.add_piece('C')
    user_player.add_piece('D')
    spot_1 = user_player.board.rows[:row6][0]
    spot_2 = user_player.board.rows[:row6][1]
    spot_3 = user_player.board.rows[:row6][2]
    spot_4 = user_player.board.rows[:row6][3]
    spot_5 = user_player.board.rows[:row6][4]
    expect(spot_1.symbol).to eq('X')
    expect(spot_2.symbol).to eq('X')
    expect(spot_3.symbol).to eq('X')
    expect(spot_4.symbol).to eq('X')
    expect(spot_5.symbol).to eq('.')
    game_status.check_horizontal_wins
    expect(user_player.has_won).to be(true)
  end

  it "can determine a diagonal win" do
    board = Board.new
    user_player = Player.new(board)
    computer = Computer.new(board)
    game_status = WinChecker.new(board, user_player, computer)
    user_player.add_piece('A')
    user_player.add_piece('B')
    user_player.add_piece('B')
    3.times do
      user_player.add_piece('C')
    end
    4.times do
      user_player.add_piece('D')
    end
    spot_1 = user_player.board.rows[:row6][0]
    spot_2 = user_player.board.rows[:row5][1]
    spot_3 = user_player.board.rows[:row4][2]
    spot_4 = user_player.board.rows[:row3][3]
    expect(spot_1.symbol).to eq('X')
    expect(spot_2.symbol).to eq('X')
    expect(spot_3.symbol).to eq('X')
    expect(spot_4.symbol).to eq('X')
    game_status.check_diagonal_wins
    expect(user_player.has_won).to be(true)
  end

  it "can determine a draw" do
    board = Board.new
    user_player = Player.new(board)
    computer = Computer.new(board)
    game_status = WinChecker.new(board, user_player, computer)
    6.times do
      user_player.add_piece('A')
      user_player.add_piece('B')
      user_player.add_piece('C')
      user_player.add_piece('D')
      user_player.add_piece('E')
      user_player.add_piece('F')
      user_player.add_piece('G')
    end
    expect(game_status.is_a_draw?).to eq("It's a draw!!")
    end

end
