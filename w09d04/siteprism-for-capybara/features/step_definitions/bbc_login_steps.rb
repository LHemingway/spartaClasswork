Given(/^I can access the BBC homepage$/) do
  @bbc_site = BBCSite.new
  @bbc_site.bbc_homepage.load
  @bbc_site.bbc_homepage.displayed?
end

And(/^I am able to select sign in$/) do
  expect(@bbc_site.bbc_homepage).to have_sign_in_link
  @bbc_site.bbc_homepage.click_sign_in_link
end

When(/^I enter my login details$/) do
  expect(current_path).to eql('/signin') 
  @bbc_site = BBCSite.new
  @bbc_site.bbc_sign_in_page.enter_email
  @bbc_site.bbc_sign_in_page.enter_password
  
end

And(/^I click sign in$/) do
  @bbc_site.bbc_sign_in_page.click_sign_in_button
end

Then(/^I have I have been signed in$/) do
  @bbc_site = BBCSite.new
  expect(@bbc_site.bbc_homepage).to be_displayed
end
