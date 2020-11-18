feature 'Adding a bookmark' do
  scenario 'User can save a bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Add bookmark')
    expect(page).to have_content('http://testbookmark.com')
  end
end
