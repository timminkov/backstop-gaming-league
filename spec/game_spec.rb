require 'game'

describe Game do
	describe "#add_player" do
		it "adds to the players array" do
			game = Game.new('')
			game.add_player(1)
			players = game.players
			players[0].should == 1
		end
	end

	describe "#remove_player" do
		it "removes players from the player array" do
			player = double("player")
			game = Game.new('')
			game.players = [player]
			game.remove_player(player)
			game.players.should == []
		end
	end
end