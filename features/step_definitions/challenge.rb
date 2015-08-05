
Given(/^I am on (.+)$/) do | website |
	visit website 
end

When(/^I select Cookware$/) do
  on(WilliamsSonomaWebPage).clickoncookware
end

When(/^I select Ovenware$/) do
   on(WilliamsSonomaWebPage).clickonovenware
end

When(/^I select one product$/) do
  on(WilliamsSonomaWebPage).clickonproduct
end

When(/^I click on Add to card$/) do
  on(WilliamsSonomaWebPage).addtocartproduct
end

When(/^I click on Checkout$/) do
  on(WilliamsSonomaWebPage).checkoutproduct
end

Then(/^I should see the shopping cart page$/) do
  on(WilliamsSonomaWebPage).shoppingcartpage
end

When(/^I search for (.+)$/) do | searchproduct |
  on(WilliamsSonomaWebPage).searchforproduct searchproduct
end

When(/^I click on Quick look$/) do
  on(WilliamsSonomaWebPage).quicklookclick 
end

Then(/^I should see the same product$/) do
  on(WilliamsSonomaWebPage).compare
end