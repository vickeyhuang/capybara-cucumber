# Testing a demo with Cucumber+Capybara

Granted, this is a really simple combination, but I ran into a few hurdles on my first attempt, and thought someone might benefit from my feeding github this working, minimal example of using Cucumber and Capybara to execute web tests against a remote application.

    git clone
    cd capybara-cucumber-example
    bundle install
    bundle exec cucumber

Which should produce output that looks something like:

    Feature: Using Baidu

      Scenario: Searching for a term # features/google.feature:3
        Given I am on baidu.com     # features/step_definitions/google_steps.rb:1
        When I enter "hello"         # features/step_definitions/google_steps.rb:5
        Then I click "search" button # features/step_definitions/google_steps.rb:9
        Then I should see results    # features/step_definitions/google_steps.rb:13

    1 scenario (1 passed)
    4 steps (4 passed)
    0m6.707s

    
The project is currently configured to use `:selenium` as the default driver, but that can be changed in `/features/support/env.rb`.
