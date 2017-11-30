require "selenium-webdriver"

class SeleniumQatoolsForm

  def initialize
    Selenium::WebDriver::Chrome.driver_path = '/usr/local/Cellar/chromedriver/2.31/bin/chromedriver'
    @driver = Selenium::WebDriver.for :chrome
    @practice_form_url = 'http://toolsqa.com/automation-practice-form/'
    
  end

  def access_practice_form
    @driver.get @practice_form_url
  end  

  def add_name_to_firstname_field
    @driver.find_element(:name, 'firstname').send_keys('Luke')
  end

  def add_name_to_lastname_field
    @driver.find_element(:name, 'lastname').send_keys('Hemingway')
  end

  def select_sex
    num = rand(1)
    element = @driver.find_element(:id, "sex-#{num}").click
  end

  def add_date_to_date_field
    @driver.find_element(:id, 'datepicker').send_keys('Get Woke S]]on]')
  end

  def select_profession
    num = rand(2)
    @driver.find_element(:id, "profession-#{num}").click
  end

  def select_continent
    drop_down = @driver.find_element(:id, "continents")
    options = drop_down.find_elements(:tag_name,"option")
    options[1].click
  end

end

practice_form_page = SeleniumQatoolsForm.new

practice_form_page.access_practice_form

practice_form_page.add_name_to_firstname_field

practice_form_page.add_name_to_lastname_field

practice_form_page.select_sex

practice_form_page.add_date_to_date_field

practice_form_page.select_profession

practice_form_page.select_continent

sleep 2