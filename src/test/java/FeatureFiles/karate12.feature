Feature: Karate test suite 12
  demo of java script functions withing scenario

  Scenario: Java script test case1
    * def fn1 = function(){return 10;}
    * def fn2 =
    """
    function(id)
    {
    karate.log(id);
    
    }
    """
    * print fn1()
    * fn2('shiv')