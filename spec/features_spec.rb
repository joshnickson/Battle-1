feature "Submit names" do
  
  # As two Players,
  # So we can play a personalised game of Battle,
  # We want to Start a fight by entering our names and seeing them
  scenario "players enter their names" do
    visit("/")
    fill_in :player01, with: "Hagrid"
    fill_in :player02, with: "Dumbledore"

    click_button "Submit"
    expect(page).to have_content("Hagrid", "Dumbledore")
  end

end
