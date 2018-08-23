describe Player do
  it 'returns the player name' do
    player = Player.new('Dumbledore')
    expect(player.name).to eq 'Dumbledore'
  end
end