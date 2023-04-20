#exercise for Selenium Webdriver methods
  @webdriver
  Feature: exercise with selenium WebDriver methods

    @webdriver1
    Scenario: Exercise with Google
      Given RM navigate to "Google"
      Then RM get page information
      And RM maximize the window