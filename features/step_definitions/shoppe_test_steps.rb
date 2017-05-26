
Given(/^I am a buyer$/) do
end

When(/^Open shoppe homepage$/) do
  @homePage = HomePage.new page
  visit('http://localhost:3000')
end

Then(/^I should see hx message "([^"]*)"$/) do |message|
  expect(@homePage.h2_message).to have_content message
end

Then(/^And click one "([^"]*)" on homepage$/) do |products|
  @homePage.click_item
end

Then(/^I should see the "([^"]*)" on details page$/) do |products|
  @detailsPage = DetailsPage.new page
  expect(@detailsPage.h2_message).to have_content products
end

When(/^You will see the "([^"]*)" of this item$/) do |price|
  @detailsPage = DetailsPage.new page
  expect(@detailsPage.item_price).to have_content price
end

Then(/^Select "([^"]*)" items to basket and submit$/) do |arg1|
  @detailsPage.select_quantity
  @detailsPage.add_to_basket
end

Then(/^Should see item "([^"]*)" "([^"]*)" "([^"]*)" in my shopping bag$/) do |products,quantity,total_price|
  @detailsPage.view_bag
  @bagPage = BagPage.new page
  expect(@bagPage.product_name).to have_content(products)
  expect(@bagPage.product_quantity).to have_content(quantity)
  expect(@bagPage.product_price).to have_content(total_price)
end

When(/^Add first item to basket on homepage$/) do
  @homePage.add_item
end

When(/^Go to basket webPage$/) do
  @homePage.view_bag
end

Then(/^Remove items on basket$/) do
  @bagPage = BagPage.new page
  @bagPage.remove_item
end

Then(/^You will see nothing in basket$/) do
  expect(@homePage.empty_bag).to have_content('Your shopping bag is empty.')
end