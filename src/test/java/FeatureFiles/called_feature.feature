Feature: Called Feature

  Scenario: URL & path Usage test case
    Given  url "https://reqres.in"
    And path "/api/users?page=2"
    When method get
    Then status 200
    And match response.page == "##"