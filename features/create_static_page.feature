Feature: Create static page
  In order to create static page
  As a site owner
  I need administration for it

  Scenario: Creating static page
    Given I am in statics administation
    When when I fill in statics details and save it
    Then I should see static page was created

