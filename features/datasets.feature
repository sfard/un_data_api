Feature: Get all datasets 
  In order to get all the datasets
  A request should be sent

  Background:
    Given the WHO USA Health data exists

  Scenario: Gets all datasets that belong to an organization in JSON
    When I ask for JSON 
    When I send a GET request to "/WHO/datasets"

    Then the response status should be "200"
    And the response body should be a JSON representation of the Dataset

  Scenario: Gets all datasets that belong to an organization in xml
    When I ask for XML
    When I send a GET request to "/WHO/datasets?format=xml"

    Then the response status should be "200"
    And the response body should be a xml representation of the Dataset

  Scenario: Gets all datasets that the specified country is in JSON
    When I ask for JSON 
    When I send a GET request to "/WHO/USA/datasets"

    Then the response status should be "200"
    And the response body should be a JSON representation of the Dataset

  Scenario: Gets all datasets that the specified country is in xml
    When I ask for XML
    When I send a GET request to "/WHO/USA/datasets?format=xml"

    Then the response status should be "200"
    And the response body should be a xml representation of the Dataset


		