Given /^I am on baidu\.com$/ do
  visit('/')
end

When /^I enter "([^"]*)"$/ do |hello|
  fill_in('kw', :with => 'hello')
end

Then /^Click the 'search' button$/ do
  click_button("百度一下")
end

Then /^I should see results$/ do
  page.should have_css('div a')
end
