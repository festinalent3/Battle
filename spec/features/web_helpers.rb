
def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Emma'
  fill_in :player_2_name, with: 'Jonatan'
  click_button ("Submit")
end
