feature 'visiting homepage' do
  scenario 'Should_display (Hello Daily Diary!)_When_accesing Index' do
    visit('/')
    expect(page).to have_content('Hello Daily Diary!')
  end
end

feature 'New diary entry' do
  scenario 'User can add a new diary entry with title & body' do
    visit '/add_entry'
    fill_in(:title, with: "New bike")
    fill_in(:body, with: "I bought a brand new green bike")
    click_button("Add entry")
    expect(page).to have_content("New bike")
    expect(page).to have_content("I bought a brand new green bike")
  end
end