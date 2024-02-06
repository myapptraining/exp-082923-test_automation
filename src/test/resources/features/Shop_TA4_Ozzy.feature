@shop
  Feature: Search for MJTote Bag from main page
    
    Background: As a conscious person, I want to wear the latest bag, so I want to educate myself about latest MJ bag model
      
      
      
      @shop1
      Scenario: Verify searching for "Leather Tote Bag" will yield correct results
        Given I open url "https://www.marcjacobs.com/"
#       Then I should see page title as "Marc Jacobs | Official Site"
        When I wait for element with xpath "//button[@data-click='close']" to be present
        And I click on element using JavaScript with xpath "//button[@data-click='close']"
        When I click on element using JavaScript with xpath "//button[@aria-label='search Marcjacobs']"
        Then I wait for element with xpath "//input[@name='q']" to be present
        When I type "Leather Medium Tote Bag" into element with xpath "//input[@name='q']"
        And I wait for 10 sec
        Then element with xpath "//div[@class='c-site-search__suggestions']" should contain text "The Leather Medium Tote Bag"
        Given I click on element using JavaScript with xpath "//a[@class='view-all']"
# Then I wait for element with xpath "//h1[@class='plp-header__title']" to be present
        Then I wait for element with xpath "//section[@class='product-grid ']" to be present
        Then element with xpath "//section[@class='product-grid ']" should contain text "The Leather Medium Tote Bag"


#    Example User story in Gherkin Format
#Feature: Search and Learn More about the Marc Jacobs Leather Tote Bag
#
#  Background As a Fashion Enthusiast,
#  I want to learn more about the Marc Jacobs Tote Bag,
#  so that I can decide if it fits my style and needs.
#
#
#  Scenario: Verify Searching for a “The Leather Tote Bag” and opening the product page
#    Given I open the main Marc Jacobs Page
#    Then I should see page title as "Marc Jacobs | Official Site"
#    When I click on the Search Icon Element
#    Then I see the the search bar appear
#    When I type "Leather Medium Tote Bag" into the search bar
#    Then I verify items related to "THe Leather Tote Bag" are present
#    Given I click on See All Results
#    Then I should see the page title contains "The Leather Medium Tote Bag"
#    Then I verify I have landed on the product page for "The Leather Medium Tote Bag"
#
#  --------------------------------------------------------------------------------
#  Requirements from the User story
#
#  Navigate to the page;
#    >Dismiss any alerts there may be
#  Verify the Title of the Page matches our expectation
#    >Search for the EXACT TITLE if possible
#  Type in the Item we are searching for in the Search Box
#    >Most sites will have a Search bar or Search Icon; Use whatever is there
#  Click Search button
#  Verify we landed on the right page
#    >This will require waiting for an element on the page
#  Then verify the item we are looking for is present (by text)
#    >Verify the xpath you have chosen contains the exact text you need