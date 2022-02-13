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
    computer = Computer.new(computer)
    game_status = WinChecker.new(board, player, computer)
    expect(game_status).to be_an_instance_of(WinChecker)
  end


end
