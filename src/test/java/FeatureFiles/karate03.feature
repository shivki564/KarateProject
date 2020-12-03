Feature: Karate test suite 3
  This Feature file demonstrates Validation of XML

  Scenario: XML_test case 01

    Given def xml = <info><id>101</id><tool><name>Karate</name><version>0.9.6</version></tool></info>
    Then print xml
    * match xml/info/id == "101"
    * match xml.info.id == "101"
    * match xml/info/tool contains "<name>Karate</name><version>0.9.6</version>"
    * match xml contains "version"

  Scenario: XML_test case 02

    Given def xml =
     """
  <info>
      <id>101</id>
      <tool>
          <name>Karate</name>
          <version>0.9.6</version>
      </tool>
       <tool>
          <name>IntelliJ</name>
          <version>2020.2</version>
      </tool>
  </info>
  """
    Then print xml
    * match xml/info/id == "101"
    * match xml.info.id == "101"
    * match xml/info/tool[2] contains "<name>IntelliJ</name><version>2020.2</version>"
    * match xml contains "version"
    * match xml/info/tool contains  "<name>IntelliJ</name><version>2020.2</version>"
