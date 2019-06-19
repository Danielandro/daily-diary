feature 'visiting homepage' do
  scenario 'Should_display (Hello Daily Diary!)_When_accesing Index' do
    visit('/')
    expect(page).to have_content('Hello Daily Diary!')
  end
end
