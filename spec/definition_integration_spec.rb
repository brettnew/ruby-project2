require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the input word path', {:type => :feature}) do
  it('allows the user to click the link and goes to page with input word form') do
    visit('/')
    click_link('Add New Word')
    expect(page).to have_content("Add a word here")
  end
end
