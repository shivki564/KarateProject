Feature: Karate test suite 10
  using URL & Path

  Scenario: URL & path Usage test case
    Given  url "https://reqres.in"
    And path "/api/users?page=2"
    When method get
    Then status 200
    And match response.page == 2

  Scenario: URL & path Usage test case2
    Given  url "https://reqres.in"
    And path "/api/users"
    And param page = 2
    When method get
    Then status 200
    And match response.page == 2