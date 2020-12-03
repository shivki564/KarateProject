Feature: karate test suite 13
  Calling static and non static

  Scenario: static variable retrival test
    * def constants = Java.type('Misc.automationConstants')
    * print constants.devUrl
    * print constants.getDevUrl()

  Scenario: Non static variable retrival test
    * def env1 =
    """
    function()
    {
    var tmp = Java.type('Misc.automationConstants');
    var constants = new tmp();
    return constants.qaUrl;

    }
    """
    * def qaUrl = call env1
    * print qaUrl

  Scenario: Non static variable retrival test2
    * def env1 =
    """
    function()
    {

    return (new  (Java.type('Misc.automationConstants'))).qaUrl;

    }
    """
    * def qaUrl = call env1
    * print qaUrl