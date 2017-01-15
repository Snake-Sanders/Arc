Feature: arc orders

  Scenario: Arc new order
    Given the arc has (0) order/s
    When an drive order is asigned
    Then the arc accepts the order
