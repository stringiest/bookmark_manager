feature 'Adding a bookmark' do
  scenario 'User can save a bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.testbookmark.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Add bookmark')
    expect(page).to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
  end
end
