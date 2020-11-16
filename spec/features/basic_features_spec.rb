feature 'Bookmark Manager home page loads' do
  scenario 'Expect home page to offer bookmark menu' do
    visit('/')
    expect(page).to have_content 'Bookmark Manager'
  end
end
