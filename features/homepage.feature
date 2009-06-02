Feature: Selector steps
  In order to have semantic markup
  I want to use a set of generic selector style steps for matching

  Scenario: I should see the foo_id
    Given I am on the homepage
    Then I should see the page

  Scenario: I should see a foo_class
    Given I am on the homepage
    Then I should see a links
