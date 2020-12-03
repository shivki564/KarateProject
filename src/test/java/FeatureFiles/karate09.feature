Feature: Karate test suite 08

  Scenario: REST API End to END testing
    Create,Fetch,update,delete employee test

    Given url "http://dummy.restapiexample.com/api/v1/create"
    And request {"name":"Shiv ki ","salary":"5.9L","age":"23"}
    When method post 
    Then status 200
    * def id = response.data.id
    * match response.data.name == "Shiv ki"
    And print id

    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method get
    Then status 200
    * print response

    Given url "http://dummy.restapiexample.com/api/v1/update/" + id
    And {"name":"Shiv ki ","salary":"5.9L","age":"32"}
    When method put
    Then status 200

    Given url "http://dummy.restapiexample.com/api/v1/delete/" + id
    And {"name":"Shiv ki ","salary":"5.9L","age":"32"}
    When method delete
    Then status 200

    Given url "http://dummy.restapiexample.com/api/v1/employee/" + id
    When method get
    Then status 200
