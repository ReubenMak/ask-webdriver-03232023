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
    Scenario: Search engine for Gibiru
      Given I open url "http://gibiru.com"
      Then I should see page title as "Gibiru – Protecting your privacy since 2009"
      Then I type "cucumber" into element with xpath "//input[@id='q']"
      Then I click on element using JavaScript with xpath "//button[@type='submit']"
      Then I wait for 2 sec
      Then I wait for element with xpath "//span[contains(text(),'All results')]" to be present
      And I should see page title contains "- Results"
      Then element with xpath "//div[@id='web-results']" should contain text "Cucumber"
    Scenario: Search engine for DuckDuckGo
      Given I open url "https://duckduckgo.com"
      Then I should see page title as "DuckDuckGo — Privacy, simplified."
      Then I type "Cucumber" into element with xpath "//input[@id='searchbox_input']"
      Then I click on element using JavaScript with xpath "//button[@type='submit']"
      Then I wait for 2 sec
      Then I wait for element with xpath "//div[@id='ads']" to be present
      And I should see page title as "Cucumber at DuckDuckGo"
      Then element with xpath "//div[@id='ads']" should contain text "Cucumber"
    Scenario: Search engine for SwissCows
      Given I open url "https://swisscows.com"
      Then I should see page title as "Your private and anonymous search engine Swisscows"
      Then I type "Cucumber" into element with xpath "//input[@type='search']"
      Then I click on element using JavaScript with xpath "//button[@type='submit']"
      Then I wait for 2 sec
      Then I wait for element with xpath "//section[@class='page-results']" to be present
      And I should see page title as "cucumber in Web search - Swisscows"
      Then element with xpath "//section[@class='page-results']" should contain text "Cucumber"
    Scenario: Search engine for searchencrypt
      Given I open url "https://www.searchencrypt.com"
      Then I should see page title as "Search Encrypt | Home"
      Then I type "Cucumber" into element with xpath "//input[@name='q']" 
      Then I click on element using JavaScript with xpath "//button[@type='submit']"
      Then I wait for 2 sec
      Then I wait for element with xpath "//div[@class='serp__top-ads']" to be present
      And I should see page title as "Search Encrypt | Search Web..."
      Then element with xpath "//div[@class='serp__top-ads']" should contain text "Cucumber"
    Scenario: Search engine for startpage
      Given I open url "https://www.startpage.com"
      Then I should see page title as "Startpage - Private Search Engine. No Tracking. No Search History."
      Then I type "Cucumber" into element with xpath "//input[@id='q']"
      Then I click on element using JavaScript with xpath "//button[@id='search-btn']"
      Then I wait for 2 sec
      Then I wait for element with xpath "//div[@class='sx-kp-top-text']" to be present
      And I should see page title as "Startpage Search Results"
      Then element with xpath "//div[@class='sx-kp-top-text']" should contain text "Cucumber"
#    !!Yandex has Bot protection and cannot complete the automation!!
#    Scenario: Search engine for yandex
#      Given I open url "https://www.yandex.com"
#      Then I should see page title as "Yandex"
#      Then I type "Cucumber" into element with xpath "//input[@id='text']"
#      Then I click on element using JavaScript with xpath "//button[@type='submit']"
#      Then I wait for 2 sec
#      Then I wait for element with xpath "//div[@class='main__center']" to be present
#      And I should see page title as "Cucumber — Yandex:  81 thousand results found"
#      Then element with xpath "//div[@class='main__center']" should contain text "Cucumber"
    Scenario: Search engine for ecosia 
      Given I open url "https://www.ecosia.org"
      Then I should see page title as "Ecosia - the search engine that plants trees"
      Then I type "Cucumber" into element with xpath "//input[@name='q']"
      Then I click on element using JavaScript with xpath "//button[@type='submit']"  
      Then I wait for 2 sec
      Then I wait for element with xpath "//div[@data-test-id='entity-titles']" to be present
      And I should see page title as "Cucumber - Ecosia - Web"
      Then element with xpath "//div[@data-test-id='entity-titles']" should contain text "Cucumber"
#    !Wiki is not secure!
#    Scenario: Search engine for wiki
#      Given I open url "https://www.wiki.com/"
#      Then I should see page title as "Wiki.com"
#      Then I type "Cucumber" into element with xpath "//input[@name='q']"
#      Then I click on element using JavaScript with xpath "//input[@name='btnG']"
#      Then I wait for 2 sec
#      Then I wait for element with xpath "<string>" to be present
    Scenario: Search engine for givewater
      Given I open url "https://www.givewater.com/"
      Then I should see page title as "Search the Web to Give Clean Water to Those in Need » giveWater Search Engine" 
      Then I type "Cucumber" into element with xpath "//input[@name='q']"
      Then I click on element using JavaScript with xpath "//button[@id='button-addon2']"
      Then I wait for 2 sec
      Then I wait for element with xpath "//div[@class='layout__mainline']" to be present
      And I should see page title as "Cucumber - GiveWater Web Search"
      Then element with xpath "//div[@class='layout__mainline']" should contain text "Cucumber"
    Scenario: Search engine for ekoru
      Given I open url "https://ekoru.org/"
      Then I should see page title as "Ekoru - every search cleans our oceans"  
      Then I type "Cucumber" into element with xpath "//input[@name='q']"
      Then I click on element using JavaScript with xpath "//button[@class='ripple material-button']/div[@id='btn_search']"
      Then I wait for 2 sec
      Then I wait for element with xpath "//div[@class='serp-wrapper']" to be present
      And I should see page title as "Ekoru - every search cleans our oceans"
      Then element with xpath "//div[@class='serp-wrapper']" should contain text "Cucumber"
