Feature: Create static page
  In order to create static page
  As a site owner
  I need administration for it

  Scenario: Creating static page
    Given I am in statics administation
    When I go to create one
    And I fill in statics details and save it
    Then I should see static page was created

  Scenario: Seeing created static
    Given I created static page
    When I go to its path
    Then I should see its title and body

