@homework_feature
Feature: Homework

  @brave
  Scenario: Brave scenario
    Given I open url "https://search.brave.com/"
    And element with xpath "//a[@id='logo']" should be displayed
    Then I type "Dog" into element with xpath "//input[@id='searchbox']"
    Then I click on element using JavaScript with xpath "//button[@id='submit-button']"
    Then I wait for 3 sec
    Then element with xpath "//div[@id='results']" should contain text "Dog"

  @my_e2e_htc
  Scenario: HTC e2e scenario
    Given I open url "https://nop-qa.portnov.com/"
    Then element with xpath "//*[contains(text(), 'Featured products')]/../..//a[contains(text(), 'Build your own computer')]" should be displayed
    Then I click on element using JavaScript with xpath "//*[contains(text(), 'Featured products')]/../..//a[contains(text(), 'Build your own computer')]"
    Then element with xpath "//div[contains(@class, 'product-review-links')]" should not contain text "0"
    Then I clear element with xpath "//input[@aria-label='Enter a quantity']"
    Then I type "3" into element with xpath "//input[@aria-label='Enter a quantity']"
#    Then I click on element with xpath "//div[contains(@class, 'overview')]//button[contains(text(), 'Add to cart')]"
#    And I wait for element with xpath "//div[contains(@class, 'bar-notification')][contains(@class, 'success')]" to be present
#    And element with xpath "//div[contains(@class, 'bar-notification')][contains(@class, 'success')]" should contain text "added"
#    And I wait for 3 sec
#    And I click on element with xpath "//a/span[contains(text(), 'Shopping cart')]"
#    And element with xpath "//td[contains(@class, 'subtotal')]/span" should contain text "$735.00"
#    Then I wait for 2 sec

