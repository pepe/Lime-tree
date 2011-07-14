Feature: Markdown body
  In order to have basic formatting of static page body
  As a site owner
  I need automatical rendering

  Scenario: Rendering body from markdown to html
    Given I created static page with body in markdown
    When I go to its path
    Then I should see its body formated

