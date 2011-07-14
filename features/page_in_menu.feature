Feature: Page in menu
  In order to have menu with chosen pages
  As a site owner
  I need to tag page to get there

  Scenario: Tagging and seeing page in menu
    Given I created static index page
    And I created page and tagged it to be in menu
    When I go to web root
    And click tagged page title in menu
    Then I should see its title and body

