Feature: arc status

  Scenario: Arc starts
    Given the arc status is "off"
    When the arc is switched "on"
    Then the arc status is "on"
    And the conf is "loaded"

  Scenario: Arc shutdown
    Given the arc status is "on"
    When the arc is switched "off"
    Then the arc status is "off"
