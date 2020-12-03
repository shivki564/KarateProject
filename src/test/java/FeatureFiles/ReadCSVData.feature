Feature: Read CSV data suite
  Reading CSV data for DDT

  Scenario Outline: CSV Data Driven Testing
    * print "<custid>, <custName>, <age>, <yob>"
    * print "<age>"
    * def json1 = {"last_name" : <custName>}
    * print json1

    Examples:
    | read('classpath:data.csv')|
