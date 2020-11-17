feature 'Bookmark Manager home page loads' do
  scenario 'Expect home page to offer bookmark menu' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end
end

feature 'Bookmarks' do
  scenario 'can view bookmarks' do
    visit('/bookmarks')
    expect(page).to have_content "http://www.makersacademy.com"
    expect(page).to have_content "http://www.destroyallsoftware.com"
    expect(page).to have_content "http://www.google.com"
  end
end
