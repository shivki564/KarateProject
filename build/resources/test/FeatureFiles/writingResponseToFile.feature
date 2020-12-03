Feature: Test suite 14
  Writing response to file
  Scenario: Example1
    * def lib = Java.type('Misc.MyUtil')
    Given url "https://reqres.in/api/users/10"
    When method get
    Then status 200
    * def res2 = get response $.data
        #* lib.writeToFile("res.json", response)
    * lib.writeToFile("res2.json", res2)
    * def res2 = read("classpath:res2.json")
    * print res1
    * print res2
    * def id =  response.data.id
    * print res2.last_name
    * def name = res2.last_name
    * def json1 = {"last_name" : #(name)}
    * print json1

    Given url "https://www.w3schools.com/xml/tempconvert.asmx"
    And header Content-Type = "text/xml; charset=utf-8"
    #And request read('soapAPIInput.xml')
    And request read('../PayloadData/soapAPIInput.xml')
    When soap action "https://www.w3schools.com/xml/CelsiusToFahrenheit"
    Then status 200
