Feature: Selector steps
  In order to have semantic markup
  I want to use a set of generic selector style steps for matching

  Background:
    Given I am on the homepage

  Scenario: I should see the id-element
    Then I should see the id-element

  Scenario: I should not see the non-existent-element
    Then I should not see the non-existent-element

  Scenario: I should see a class-element
    Then I should see a class-element

  Scenario: I should not see a non-existent-element
    Then I should not see a non-existent-element

  Scenario: I should see an class-element
    Then I should see an class-element

  Scenario: I should see a element in the containing-element
    Then I should see a element in the containing-element

  Scenario: I should not see a non-existent-element in the containing-element
    Then I should not see a non-existent-element in the containing-element
    
  Scenario: I should see the inner-id-element in the containing-element
    Then I should see the inner-id-element in the containing-element

  Scenario: I should not see the non-existing-element in the containing-element
    Then I should not see the non-existing-element in the containing-element

  Scenario: I should see 3 class-elements in the id-element
    Then I should see 3 class-elements in the id-element

  Scenario: I should not see 5 class-elements in the id-element
    Then I should not see 5 class-elements in the id-element

  Scenario: I should see 2 to 4 class-elements in the id-element
    Then I should see 2 to 4 class-elements in the id-element

  Scenario: I should not see 5 to 7 class-elements in the id-element
    Then I should not see 5 to 7 class-elements in the id-element

  Scenario: The containing-element in the outer-element should contain a inner-class-element
    Then the containing-element in the outer-element should contain a inner-class-element

  Scenario: The containing-element in the outer-element should not contain a non-existing-element
    Then the containing-element in the outer-element should not contain a non-existing-element

  Scenario: The containing_element in the outer_element should contain a inner_class_element
    Then the containing_element in the outer_element should contain a inner_class_element

  Scenario: The containing_element in the outer_element should not contain a non_existing_element
    Then the containing_element in the outer_element should not contain a non_existing_element
