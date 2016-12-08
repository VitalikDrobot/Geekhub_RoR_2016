require 'rails_helper'
feature 'Login' do
	context 'valid params' do
		scenario 'user login' do
			OmniAuth.config.mock_auth[:vkontakte] = OmniAuth::AuthHash.new(
        provider: 'vkontakte',
        uid: '16583',
        info: { email: 'Vitalik_Drobot@mail.com' }
      )
      visit root_path
			click_link 'VK'
			expect(page).to have_content('email')
		end

	end
	context 'error params' do
	end
end