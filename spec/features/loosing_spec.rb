feature 'loosing' do
	scenario 'you got POWNED' do
      sign_in_and_play_and_scratch
      attack_till_death until page.has_content?("Only one cat now remains, the winner takes it all!")
      expect(page).to have_content "Only one cat now remains, the winner takes it all!"
    end
  end
