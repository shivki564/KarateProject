Feature:  test fixture suite
  Demo using background after scenario, after feature

  Background:  Before Scenario
    * print "before scenario"
    * configure afterScenario =
    """
    function ()
    {
    karate.log("from after scenario");
    }

    """
    * configure afterFeature =
    """
    function ()
    {
    karate.log("from after feature");
    }

    """
    Scenario: Test case 1
      * print "from Test case 1"

    Scenario: Test case 2
      * print "from test case 2"