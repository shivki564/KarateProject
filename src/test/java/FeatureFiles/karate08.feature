Feature: Karate test suite 08
  Testing REST API with JSON Output

  @rest
  Scenario: REST API testing
    Given url "http://dummy.restapiexample.com/api/v1/employees"


    When method get
    Then status 200
    #And match response contains 13
    * match responseType == 'json'
    * match response.status == "success"
    * match response.status == "#string"
    * match response.data == "#array"
    * match response.data[0].employee_name contains "Tiger"

