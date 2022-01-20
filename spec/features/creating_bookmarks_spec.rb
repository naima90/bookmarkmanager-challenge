feature 'add bookmarks' do
  scenario 'a user can add a bookmark to bookmarkmanager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://example.org')
    fill_in('title', with: 'testing')
    click_button('add')

    expect(page).to have_link('testing', href: 'http://example.org')
  end
end