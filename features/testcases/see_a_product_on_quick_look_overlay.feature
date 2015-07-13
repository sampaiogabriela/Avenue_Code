Feature: As a customer
  I want to search for a product and open it's quick look overlay
  I should be able to see the exact same clicked product on the quick look overlay

  Scenario: See a product on quick look overlay
    Given I search for a product on search input
    Then I hoover over the product image to see the quick look button
    And i click on the quick look button to see product