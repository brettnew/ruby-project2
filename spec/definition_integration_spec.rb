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
  it ('allows user to enter word and reutrns the word after clicking button') do
    visit('/words/new')
    fill_in('new_word', :with => 'hello')
    click_button('Add Word')
    expect(page).to have_content('hello')
  end
  it ('allows user to return to main page') do
    visit('/words/new')
    click_link('Return to Main Page')
    expect(page).to have_content('Welcome to
    Your')
  end
end
