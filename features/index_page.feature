Feature: Index page
  In order to have root page of whole web
  As a site owner
  I need simple method for creating it

  Scenario: Creating and seeing index page
    Given I created static index page
    When I go to web root
    Then I should see I am at home sweet home

