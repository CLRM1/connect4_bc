require 'rspec'
require './lib/game'
require './lib/player'

describe Player do
  describe 'add_piece' do
    it 'places a piece in the given row' do
      user_player = Player.new
      user_player.game.start
      user_player.add_piece('A')
      spot_2 = user_player.game.board[:row6][1]
      spot_3 = user_player.game.board[:row6][2]
      spot_4 = user_player.game.board[:row6][3]
      spot_5 = user_player.game.board[:row6][4]
      spot_6 = user_player.game.board[:row6][5]
      spot_7 = user_player.game.board[:row6][6]
      expect(user_player.game.board[:row6]).to eq(['X', spot_2, spot_3, spot_4, spot_5, spot_6, spot_7])
    end
  end
end
