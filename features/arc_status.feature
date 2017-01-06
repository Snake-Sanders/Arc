Feature: arc status

  Scenario: Arc starts
    Given the arc is off
    When the arc is switched on
    Then the arc is on
