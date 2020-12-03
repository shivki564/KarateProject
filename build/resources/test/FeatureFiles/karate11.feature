Feature: Karate test suite 11
  data driven testing

  @ddt
  Scenario Outline: DDT test case
    Given  url "https://reqres.in"
    And path "/api/users?page=<pgno>"
    When method get
    Then status 200
    And match response.page == "##"

    Examples:
    | pgno |
    | 1 |
    | 2 |
    | 3 |
    | 4 |