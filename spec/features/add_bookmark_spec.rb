feature 'add bookmark' do
  scenario 'allows the user to add a bookmark to their list' do
    visit '/bookmarks/new'
    fill_in 'New bookmark', with: 'www.youtube.com'
    click_button 'Add'
    expect(page).to have_content 'www.youtube.com'
  end
end
