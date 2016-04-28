feature 'reduce hp' do
	scenario 'get a confirmation with lower HP' do
		sign_in_and_play_and_scratch
    expect(page).to (have_content 19 or expect(page).to have_content 18 or expect(page).to have_content 17)  
  end
end
