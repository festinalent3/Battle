feature 'Hit Points' do
  scenario 'shows Player 2 HP' do
    sign_in_and_play
    expect(page).to have_content 'Jonatan: 100HP'
  end
end
