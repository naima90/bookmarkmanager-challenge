feature 'viewing bookmarks /bookmarks' do
  scenario 'view bookmark' do
    visit('/bookmarks')
    expect(page).to have_content "https://www.google.com/"
    expect(page).to have_content "https://www.google.com/"
  end
end
