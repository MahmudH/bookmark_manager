require 'spec_helper'

feature 'user can save website links'do
  scenario 'store url & title to bookmark manager' do
    visit '/links/new'
    fill_in 'title', with: 'Quora'
    fill_in 'url', with: 'https://www.quora.com'
    click_button 'submit'
    Link.create(url: 'www.quora.com', title: 'Quora')
    expect(current_path).to eq '/links'
    within 'ul#links' do
      expect(page).to have_content('Quora')
    end
  end
end
