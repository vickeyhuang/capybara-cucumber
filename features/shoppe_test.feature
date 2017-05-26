Feature: Shoppe

  Scenario Outline: Buy things on shoppe.

    Given I am a buyer
    When Open shoppe homepage
    Then I should see hx message "<message>"
    Then And click one "<products>" on homepage
    Then I should see the "<products>" on details page
    Examples:
      | message        | products     |
      | Welcome to our | Yealink T20P |


  Scenario Outline: Add items to shopping basket and check item info
    Given Open shoppe homepage
    When And click one "<products>" on homepage
    When You will see the "<price>" of this item
    Then Select "<quantity>" items to basket and submit
    Then Should see item "<products>" "<quantity>" "<total_price>" in my shopping bag
    Examples:
      | products     | price  | quantity | total_price |
      | Yealink T20P | $54.99 | 2        | $109.98     |


   Scenario: Remove items on shoppe basket and check if remove well
     Given Open shoppe homepage
     When Add first item to basket on homepage
     When Go to basket webPage
     Then Remove items on basket
     Then You will see nothing in basket