require 'capybara/cucumber'
require 'cucumber'
require 'capybara/dsl'
require_relative '../helpers/login_helper'

Capybara.register_driver :chromedriver do |app|
  Capybara::Selenium::Driver.new(app,:browser => :chrome)
end

Capybara.configure do |config|
    config.ignore_hidden_elements = false
    config.default_max_wait_time = 10
    config.match = :prefer_exact
    config.default_driver = :chromedriver
    config.app_host = 'https://www.tumblr.com'
end