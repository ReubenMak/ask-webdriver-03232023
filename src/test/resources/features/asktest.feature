#Test cases for ASK application
#Author: Reuben Makarevich
@ask
Feature: Test Cases for ASK application
  @ask1
  Scenario: Create Quiz with 50% passing score
    Given I open url "http://ask-int.portnov.com/"
    Then I should see page title as "Assessment Control @ Portnov"
    And I type "dugbaker@pbastaff.org" into element with xpath "//input[@formcontrolname='email']"
    And I type "dugbaker123" into element with xpath "//input[@formcontrolname='password']"
    And I click on element using JavaScript with xpath "//button[@type='submit']"
    Then I wait for element with xpath "//p[contains(text(),'TEACHER')]" to be present
    Then element with xpath "//p[contains(text(),'TEACHER')]" should be present
    Then I click on element with xpath "//h5[contains(text(),'Quizzes')]"
    Then I wait for element with xpath "//h4[contains(text(),'List of Quizzes')]" to be present
    And I click on element with xpath "//span[contains(text(),'Create New Quiz')]"
    And I wait for 1 sec
    Then I type "AUTO SCORE 501" into element with xpath "//input[@formcontrolname='name']"
    And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    And I click on element with xpath "//mat-panel-title[contains(text(),'Q1')]/../../..//div[contains(text(),'Single-Choice')]"
    Then I type "QUESTION 1" into element with xpath "//mat-panel-title[contains(text(),'Q1')]/../../..//textarea[@formcontrolname='question']"
    Then I type "VALID 1" into element with xpath "//mat-panel-title[contains(text(),'Q1')]/../../..//textarea[@placeholder='Option 1*']"
    Then I type "VALID 2" into element with xpath "//mat-panel-title[contains(text(),'Q1')]/../../..//textarea[@placeholder='Option 2*']"
    Then I click on element with xpath "//mat-panel-title[contains(text(),'Q1')]/../../..//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
    And I click on element with xpath "//mat-icon[contains(text(),'add_circle')]"
    And I click on element with xpath "//mat-panel-title[contains(text(),'Q2')]/../../..//div[contains(text(),'Single-Choice')]"
    Then I type "QUESTION 2" into element with xpath "//mat-panel-title[contains(text(),'Q2')]/../../..//textarea[@formcontrolname='question']"
    Then I type "VALID 1" into element with xpath "//mat-panel-title[contains(text(),'Q2')]/../../..//textarea[@placeholder='Option 1*']"
    Then I type "VALID 2" into element with xpath "//mat-panel-title[contains(text(),'Q2')]/../../..//textarea[@placeholder='Option 2*']"
    Then I click on element with xpath "//mat-panel-title[contains(text(),'Q2')]/../../..//mat-radio-button[@class='mat-radio-button mat-accent'][1]"
    Then I click on element with xpath "//span[contains(text(),'Save')]"
    And I wait for 1 sec
    Then I click on element with xpath "//h5[contains(text(),'Assignments')]"
    And I wait for element with xpath "//h4[contains(text(),'List of Assignments')]" to be present
    Then I click on element with xpath "//span[contains(text(),'Create New Assignment')]"
    Then I click on element with xpath "//span[contains(text(),'Select Quiz To Assign')]"
    And I click on element with xpath "//span[contains(text(),'AUTO SCORE 501')]"
    Then I switch to iframe with xpath "//mat-list-option[@role='option']"
    And I click on element with xpath "//*[contains(text(),'REUBEN STUDENT')]"
    Then I click on element with xpath "//span[contains(text(),'Give Assignment')]"

