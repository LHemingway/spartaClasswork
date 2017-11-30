require_relative "spec_helper"

describe "Testing the Budget app" do
  before(:all)do
    @driver = Appium::Driver.new(opts, true)
    Appium.promote_appium_methods(RSpec::Core::ExampleGroup)
    @driver.start_driver
    create_budget
  end

  def create_budget
    find_elements(:id, 'protect.budgetwatch:id/menu')[0].click
    find_element(:id, 'protect.budgetwatch:id/action_add').click
    find_element(:id, 'protect.budgetwatch:id/budgetNameEdit').type("Chris's Budget")
    find_element(:id, 'protect.budgetwatch:id/valueEdit').type("181")
    find_element(:id, 'protect.budgetwatch:id/action_save').click
  end

  it "should open the budget watch app" do
    find_element(:id, 'protect.budgetwatch:id/action_settings').displayed?
  end

  it "should create a new budget." do
    expect(find_element(:id, 'protect.budgetwatch:id/budgetName').text).to eql('Chris\'s Budget')
    # binding.pry
  end

  it "should create a new transaction" do
    first_button.click
    find_elements(:id, 'protect.budgetwatch:id/menu')[1].click
    # find_element(:id, 'protect.budgetwatch:id/budgetSpinner').click
    find_element(:id, 'protect.budgetwatch:id/action_add').click
    find_element(:id, 'protect.budgetwatch:id/nameEdit').type("Ze Budget")
    find_element(:id, 'protect.budgetwatch:id/accountEdit').type("My Account")
    find_element(:id, 'protect.budgetwatch:id/valueEdit').type("1998")
    find_element(:id, 'protect.budgetwatch:id/noteEdit').type("Dive Dive Dive!")
    find_element(:id, 'protect.budgetwatch:id/action_save').click   
  end


  after(:all) do
    @driver.driver_quit
  end
end