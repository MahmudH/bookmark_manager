require 'spec_helper'
# As a User
# So that I can browse my book marks list
# I'd like to be to shown a list of links

feature 'homepage contains links' do
  scenario 'see links' do
    Link.create(url: 'www.google.com', title: 'Google')
    visit('/links')
    within 'ul#links' do
      expect(page).to have_content('Google')
    end
  end
end
