Given(/^I can access the toolsqa practice automation form$/) do
	visit('/automation-practice-form')	
end

When(/^I fill in form fields with expected data types$/) do
	fill_in 'firstname', with: 'Luke'
	fill_in 'lastname', with: 'Hemingway'
	choose 'sex-0'
	choose 'exp-6'
	fill_in 'datepicker', with: '14/05/1992'
	find('#profession-0').click
	find('#tool-2').click
	select 'Europe', from: 'continents'
	select 'Wait Commands', from: 'selenium_commands'
	click_button 'submit'
end

Then(/^they appear on the page correctly $/) do
	expect('firstname').to eql ("")
end