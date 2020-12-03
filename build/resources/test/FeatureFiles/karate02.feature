Feature:  This is karate test suite 02
  This feature file consists of JSOn validations

  Scenario:  Json_test_01
    Given def json =  { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    Then assert json.id == "101"
    * assert json.tool.name == "Karate"
    * assert json.tool.version == "0.9.6"
    * match json.tool == { "name":"Karate", "version":"0.9.6"}

  Scenario:  Json_test_02
    Given def json =
    """
  {
  "id" : "101",
  "tool": { "name":"Karate", "version":"0.9.6"}
  }
    """
    * print json
    Then assert json.id == "101"
    * assert json.tool.name == "Karate"
    * assert json.tool.version == "0.9.6"
    * match json.tool == { "name":"Karate", "version":"0.9.6"}

  Scenario:  Json_test_03
    Given def json =  { "id" : "101", "tool": { "name":"Karate", "version":"0.9.6"}}
    * print json
    Then assert json.id == "101"
    * assert json.tool.name == "Karate"
    * assert json.tool.version == "0.9.6"
    * match json.tool == { "name":"Karate", "version":"0.9.6"}
