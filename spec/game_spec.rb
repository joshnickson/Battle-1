require 'game'

describe Game do

  let(:game) { described_class.new("1", "2") }
  let(:player02) { double("player02", :name => "Dumbledore") }

  describe "#attack" do
    it "attacks player" do
      expect(player02).to receive(:receive_damage)
      game.attack(player02)
    end
  end

end