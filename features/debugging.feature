Feature: Debugging Steps
  In order to debug easier
  I want to have some debugging steps

  Scenario: Dump objects to standard out
    Given the following entrees exist
      | entree | calories | fat calories |
      | eggs   | 100      | 80           |
      | burger | 250      | 200          |
      | salad  | 75       | 10           |
    Then dump all entrees to standard output 
