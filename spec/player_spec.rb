describe Player do

  let(:player01) { Player.new('Hagrid') }
  let(:player02) { Player.new('Dumbledore') }

  describe "#name" do
    it 'returns the player name' do
      expect(player01.name).to eq 'Hagrid'
    end
  end

  describe '#hit_points' do
    it "returns players hit points" do
      expect(player01.hit_points).to eq 100
    end
  end

end