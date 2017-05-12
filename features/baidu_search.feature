Feature: Using Baidu

Scenario: Searching for a string

Given I am on baidu.com
When I enter "hello"
Then Click the 'search' button
Then I should see results