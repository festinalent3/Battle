feature 'Hit Points' do
  scenario 'shows Player 2 HP' do
    visit('/')
    fill_in :player_1_name, with: 'Emma'
    fill_in :player_2_name, with: 'Jonatan'
    click_button ("Submit")
    expect(page).to have_content 'Jonatan: 100HP'
  end
end

# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points