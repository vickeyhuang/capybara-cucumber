require 'capybara/cucumber'
require "capybara/rspec"
require "capybara"
require "rspec"

Capybara.app_host = "https://baidu.com"
Capybara.default_driver = :selenium

Capybara.register_driver :selenium do |app| Capybara::Selenium::Driver.new(
    app, :browser => :chrome )

end