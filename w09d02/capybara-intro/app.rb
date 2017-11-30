require "capybara"

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

session = Capybara::Session.new(:selenium)

session.visit('http://toolsqa.com/automation-practice-form/')

# Fill in form inputs using name or id
session.fill_in 'firstname', with: 'Luke'
session.fill_in 'lastname', with: 'Hemingway'
session.fill_in 'datepicker', with: '14/05/1992'
# Radio button using ID
session.choose 'sex-0'
session.choose 'exp-6'
# Searching using css selector like jQuery
session.find('#profession-0').click
session.find('#tool-2').click
# Select from dropdowns using ids and names
session.select 'Europe', from: 'continents'
session.select 'Wait Commands', from: 'selenium_commands'
# Click button option - needs html button tag and id
session.click_button 'submit'
# Extra finders
session.find_button('Button')
session.find_link('Partial Link Test')
session.find(:xpath, '//*[@id="content"]/form/fieldset/div[8]/a').hover

sleep 2