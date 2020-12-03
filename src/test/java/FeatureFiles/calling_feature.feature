Feature: Calling feature

  Scenario: Calling test case
    * def result = call read('called_feature.feature')
    * match result.responseType == 'json'
    * match result.responseHeaders.Transfer-Encoding[0] == 'chunked'
    * print result.response.data[0]
