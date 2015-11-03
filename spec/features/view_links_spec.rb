require 'spec_helper'
# As a User
# So that I can browse my book marks list
# I'd like to be to shown a list of links

feature 'homepage contains links' do
  scenario 'I can see existing links on links page' do
    Link.create(url: 'www.google.com', title: 'Google')
    visit '/links'

  expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content('Google')
    end
  end
end
