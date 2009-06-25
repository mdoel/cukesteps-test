Feature: Model Creation Steps
  In order to have readable Cucumber features
  I want to have a generic creation step that handles associated data

  Scenario: Single object with no associations
    Given the following entrees exist
      | entree | calories | fat calories |
      | eggs   | 100      | 80           |
      | burger | 250      | 200          |
      | salad  | 75       | 10           |
    Then 3 entrees should exist

  Scenario: Uppercase names
     Given the following Entrees exist
      | Entree | Calories | Fat Calories |
      | eggs   | 100      | 80           |
      | burger | 250      | 200          |
      | salad  | 75       | 10           |
    Then 3 Entrees should exist

  Scenario: Single object with one attribute created by lookup
    Given the following restaurants exist
      | brand     |
      | McDonalds |
      | Chipotle  |
    Then 2 restaurants should exist

  Scenario: Single object with one attribute created by create
    Given the following restaurants exist
      | location  |
      | Miami fl  |
      | Columbus  |
    Then 2 restaurants should exist

  Scenario: Upper case names in associations
    Given the following Restaurants exist
      | Location  | Brand     |
      | Miami fl  | McDonalds |
      | Columbus  | Chipotle  |
    Then 2 restaurants should exist

  Scenario: Commas in value
    Given the following Restaurants exist
      | Location   | Brand     |
      | Miami, fl  | McDonalds |
      | Columbus   | Chipotle  |
    Then 2 restaurants should exist

  Scenario: Linked objects with parent object defined first
    Given the following restaurants exist
      | restaurant | Location   | Brand     |
      | mcd-miami  | Miami, fl  | McDonalds |
      | chip-cols  | Columbus   | Chipotle  |
    Given the following employees exist
      | name    | restaurant |
      | joe     | mcd-miami  |
      | sally   | chip-cols  |
      | william | chip-cols  |
    Then 2 restaurants should exist
    And 3 employees should exist
    And the "Chipotle" restaurant in "Columbus" has 2 employees
