
feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Emma'
    fill_in :player_2_name, with: 'Jonatan'
    click_button 'Submit'
    expect(page).to have_content 'Emma vs. Jonatan'
  end
end
