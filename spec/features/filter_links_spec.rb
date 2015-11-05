# As a time-pressed user
# So that I can quickly find links on a particular topic
# I would like to filter links by tag

feature 'filter by tags' do
  before(:each) do
    Link.create(title: 'Quora', url: 'www.quora.com', tags: [Tag.first_or_create(name: 'education')])
    Link.create(title: 'Google', url: 'www.google.com', tags: [Tag.first_or_create(name: 'search')])
    Link.create(title: 'Footytube', url: 'www.footytube.com', tags: [Tag.first_or_create(name: 'football')])
    Link.create(title: 'Bubble shop', url: 'www.bubbleshop.com', tags: [Tag.first_or_create(name: 'bubbles')])
  end
  scenario 'find a link' do
    visit('/tags/bubbles')
    expect(page.status_code).to eq 200
    within 'ul#links' do
      expect(page).to_not have_content('Quora')
      expect(page).to_not have_content('www.google.com')
      expect(page).to have_content('Bubble shop')
    end
  end
end
