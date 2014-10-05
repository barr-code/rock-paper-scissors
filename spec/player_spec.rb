require 'player'

describe Player do 

	let(:player) {Player.new('Victoria')}

	it "has a name" do 
		expect(player.name).to eq('Victoria')
	end

	it "chooses a weapon" do
		expect(player.weapon).to eq(nil)
	end

end