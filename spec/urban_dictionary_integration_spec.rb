require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe('the word definition path', {:type => :feature}) do

  it("takes a word from the user and returns a list of all of the words in the database (in uppercase; seperated by '//')") do
    visit('/')
      expect(page).to have_no_content('first_test')
      click_link('to_word_form')
        fill_in('word', :with => "first_test")
        click_button('submit_word')
        expect(page).to have_content('FIRST_TEST')
      click_link('to_word_form')
        fill_in('word', :with => "SECOND_TEST")
        click_button('submit_word')
        expect(page).to have_content('FIRST_TEST // SECOND_TEST')
  end

  it("takes a definition from the user for a given Word object and returns a list of all paired definitions for the given Word object") do
    visit('/')
      click_link('to_word_form')
        fill_in('word', :with => "third_test")
        click_button('submit_word')
        expect(page).to have_content('THIRD_TEST')
      click_on('THIRD_TEST')
        click_button('add_definition')
          fill_in('definition', :with => "This is a definition for first_test")
          click_button('submit_definition')
          expect(page).to have_content("This is a definition for first_test")
  end

end
