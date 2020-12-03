Feature: Karate test suite 05
  Testing REST API

  @rest
  Scenario: REST API testing
    Given url "https://www.w3schools.com/xml/tempconvert.asmx/CelsiusToFahrenheit"
    And header Content-Type = "application/x-www-form-urlencoded"
    And request "Celsius=40"

    When method post
    Then status 200
    And match response contains "104"
    * match response //string == "104"
    * match responseHeaders['Server'] == ['Microsoft-IIS/7.5']
    * match responseHeaders['Server'][0] == 'Microsoft-IIS/7.5'
    * assert responseTime <= 2000

