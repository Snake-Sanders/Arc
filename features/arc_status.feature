Feature: arc status

  Scenario: Arc starts
    Given the arc status is off
    When the arc is switched on
    Then the arc status is on

  Scenario: Arc shutdown
    Given the arc status is on
    When the arc is shitched off
    Then the arc status is off 
