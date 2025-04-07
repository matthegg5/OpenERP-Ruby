# test/test_helper.rb

require "capybara/rails"
require "capybara/minitest"
require "selenium/webdriver"

# Configure Capybara to use Selenium with Chrome
Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  # options.add_argument("--headless")
  options.add_argument("--disable-gpu")
  options.add_argument("--no-sandbox")

  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options)
end

# Set the default driver for Capybara
Capybara.default_driver = :chrome
Capybara.javascript_driver = :chrome
