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
    fill_in('new_word', :with => 'love')
    click_button('Add Word')
    expect(page).to have_content('love')
  end
  it ('allows user to return to main page') do
    visit('/words/new')
    click_link('Return to Main Page')
    expect(page).to have_content('Welcome to
    Your')
  end
  it ('allows user to move to page to view definitions') do
    visit('/words')
    click_link('love')
    expect(page).to have_content('Here are the definitions')
  end
  it('allows user to view definitions and move to page to add new definition') do
    visit('/words/1')
    click_link('Add a new definition')
    expect(page).to have_content('Add a definition')
  end
  it('allows user to enter definitions and return to main page') do
    visit('words/1/definitions/new')
    fill_in('new_definition', :with => 'an intense feeling of deep affection')
    click_button('Add Definition')
    expect(page).to have_content('Welcome to Your')
  end
end
