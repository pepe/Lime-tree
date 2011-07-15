Feature: Page weight
  In order to order pages, menu items and more
  As a site owner
  I need the page weight

  Scenario: Seeing the page weight
    Given I created static index page with higher weight
    And I created static page with lower weight
    When I go to web root
    Then I should see index first in menu

