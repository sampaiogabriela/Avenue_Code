Feature: As a customer
  I want to go to a product page and add the product to the cart
  I should be able to see this product added to cart on shopping cart page

  Scenario: Add a product to Bag and check it on shopping cart page
    Given I search for a product on flyout menu
    Then I add a product to my shopping cart clicking on add to cart from product page
    And i click to see product on shopping cart page