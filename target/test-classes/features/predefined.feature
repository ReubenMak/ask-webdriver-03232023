#Search Engine exercise
#ASK0323-7
#Author: Reuben Makarevich

@predefined
Feature: Search Engine scenarios
  @predefined1
    Scenario: Search engine for google
      Given I open url "https://www.google.com/"
      Then I should see page title as "Google"
      Then I type "cucumber" into element with xpath "//textarea[@id='APjFqb']"
      Then I click on element using JavaScript with xpath "//input[@name='btnK']"
      Then I wait for 2 sec
      Then I wait for element with xpath "//*[@id='res']" to be present
      And I should see page title contains "- Google Search"
      Then element with xpath "//*[@id='res']" should contain text "Cucumber"