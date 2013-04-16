require 'player'

describe Player do
	before(:each) do
		info = {name: 'Tim', team: 'Support'}
		@player = Player.new(info)
	end

	describe "#add_score" do
		it "adds 5 to the score if 5 is entered" do
			@player.score = 1
			@player.add_score(5)
			@player.score.should == 6
		end

		it "adds 1 to the score if no value is given" do
			@player.add_score
			@player.score.should == 1
		end
	end

	describe "#subtract_score" do
		it "subtracts 5 from the score if 5 is entered" do
			@player.subtract_score(5)
			@player.score.should == -5
		end

		it "subtracts 1 from the score if no value is given" do
			@player.subtract_score
			@player.score.should == -1
		end
	end
end