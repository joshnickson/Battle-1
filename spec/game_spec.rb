require 'game'

describe Game do

  let(:game) { described_class.new(player01, player02) }
  let(:player01) { double :player01 }
  let(:player02) { double :player02 }

  describe "#attack" do
    it "attacks player" do
      expect(player02).to receive(:receive_damage)
      game.attack(player02)
    end
  end

  describe '#player01' do 
    it 'returns player 1' do
      expect(game.player01).to eq player01
    end
  end

  describe '#player02' do 
    it 'returns player 2' do
      expect(game.player02).to eq player02
    end
  end


end