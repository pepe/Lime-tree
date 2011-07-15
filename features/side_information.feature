  Feature: Side information
    In order to have side information on some pages
    As a site owner
    I need easy way to create it

  Scenario: Seeing created static
    Given I created static page
    And I created side information page for it
    When I go to its path
    Then I should see side information title and body

