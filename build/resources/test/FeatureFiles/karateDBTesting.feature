Feature:  Karate DB test suite

  Background: dbIntitiation
    * def db = Java.type('Misc.MyDbUtil')

    Scenario: Select scenario
      * def rows = db.selectStatement("select * from tools");
      * print rows
