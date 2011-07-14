Feature: Site wide configuration
  In order to configure site wide options
  As a site owner
  I need to have page which will hold it

  Scenario: Seeing index page title as site title
    Given I created configuration page
    And I created static page
    When I go to its path
    Then I should see configuration page title

  Scenario: Adding footer to configuration
    Given I created configuration page with footer
    And I created static page
    When I go to its path
    Then I should see footer text

