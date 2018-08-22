feature "Home Page" do
  scenario "test infrastructure" do
    visit("/")
    expect(page).to have_content "Testing infrastructure working!"
  end
end
