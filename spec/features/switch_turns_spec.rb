feature 'reduce hp' do
	scenario 'get a confirmation with lower HP' do
		sign_in_and_play_and_scratch
    click_button 'Revenge!'
    expect(page).to have_content 'Mittens vs. Slasher'
  end
end
