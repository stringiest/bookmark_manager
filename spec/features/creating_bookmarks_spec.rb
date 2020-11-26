# frozen_string_literal: true

feature 'Adding a bookmark' do
  scenario 'User can save a bookmark' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://www.testbookmark.com')
    fill_in('title', with: 'Test Bookmark')
    click_button('Add bookmark')
    expect(page).to have_link('Test Bookmark', href: 'http://www.testbookmark.com')
  end

  scenario 'The bookmark must be a valid URL' do
    visit('/bookmarks/new')
    fill_in('url', with: 'not a real bookmark')
    fill_in('title', with: 'Fake Bookmark')
    click_button('Add bookmark')

    expect(page).not_to have_content 'not a real bookmark'
    expect(page).to have_content 'You must submit a valid URL.'
  end
end
