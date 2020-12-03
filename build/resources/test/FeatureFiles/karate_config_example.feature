Feature: Karate Config Suite files
  Reading Global variables from karate config.js files

  Scenario: karate config test case 1
    Given url baseUrl
    And path listUsers
    When method get
    Then status 200