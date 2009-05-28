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
