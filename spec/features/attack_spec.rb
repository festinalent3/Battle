feature 'Attack' do
  scenario 'attacks Player 2' do
    sign_in_and_play
    click_button ("Attack")
    expect(page).to have_content 'You attacked Jonatan'
  end
end
