require "appium_lib"
require "pry"

RSpec.configure do |config|
  config.formatter = :documentation
end


def opts
  {
    caps: {
    "platformName": "Android",
    "deviceName": "pixelemulator",
    "app": "/Users/tech-a49/Downloads/budgetwatch.apk"
    }
  }
end