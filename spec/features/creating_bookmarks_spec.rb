feature 'add bookmarks' do
  scenario 'a user can add a bookmark to bookmarkmanager' do
    visit('/bookmarks/new')

    fill_in('url', with: 'http://example.org')
    click_button('add')

    expect(page).to have_content 'http://example.org'
  end
end