require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word_count path', {:type => :feature}) do
  it('returns the number of instances of a word in a sentence') do
    visit('/')
    fill_in('sentence', :with => 'It\'s a dog eat dog world.')
    fill_in('word', :with => 'dog')
    click_button('Submit')
    expect(page).to(have_content('Your sentence has 2 instances of the word, dog.'))
  end
end