Feature: Karate Test suite one
  Demo of using variables in scenario
  
  Scenario: Karate_test_01
    
    Given  def a = 10
    And def b = 20
    When def c = a + b
    Then assert c == 30
    And print "C = ",  c
    And karate.log("Test case 1 ended")

  Scenario: Karate_test_02

    Given  def a = 10
    * def b = 20
    When def c = a * b
    Then assert c == 200
    * print "C = ",  c
    * karate.log("Test case 2 ended")

  Scenario: Karate_test_03

    * def a = 10
    * def b = 25
    * def c = a * b
    * assert c == 250
    * print "C = ",  c
    * karate.log("Test case 3 ended")