Feature: 
1- As a customer
I want to go to a product page and add the product to the cart
I should be able to see this product added to cart on shopping cart page
2 -As a customer
I want to search for a product and open it's quick look overlay
I should be able to see the exact same clicked product on the quick look overlay

#1 Feature 1
Scenario: Add a product to a cart and go to shopping cart page
Given I am on WilliamsSonomaWebPage
When I select Cookware 
And I select Ovenware
And I select one product
And I click on Add to card
And I click on Checkout
Then I should see the shopping cart page

#2 Feature 2
Scenario: Search for a product and see on quick look overlay
Given I am on WilliamsSonomaWebPage
When I search for oven mitts
And I click on Quick look
Then I should see the same product

#3 Feature 3
Scenario: Search for a product and open the window for tweet this project
Given I am on WilliamsSonomaWebPage
When I search for juicers
And I select one product
And I click on Tweet
Then I should see the the widow to tweet the product