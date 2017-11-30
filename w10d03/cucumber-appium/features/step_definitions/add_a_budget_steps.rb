Given(/^I can open the app$/) do
  main_page.main_page_displayed?
end

When(/^click on budget$/) do
  main_page.find_budget_button.click
end

Then(/^the budget page opens$/) do
   expect(budget_page.find_budget).to be true
end
