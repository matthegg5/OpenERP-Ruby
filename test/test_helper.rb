require "capybara/rails"
require "capybara/minitest"
require "selenium/webdriver"

# Configure Capybara to use Selenium with Chrome
Capybara.register_driver :chrome do |app|
  Capybara::Selenium::Driver.new app, browser: :chrome,
    options: Selenium::WebDriver::Chrome::Options.new(args: %w[headless disable-gpu])
end

# Set the default driver for Capybara
Capybara.default_driver = :chrome
Capybara.javascript_driver = :chrome

# Enable the Capybara driver for system tests
Capybara.server = :puma

# Automatically restart the database between tests (important for tests involving the database)
ActiveRecord::Migration.maintain_test_schema!
