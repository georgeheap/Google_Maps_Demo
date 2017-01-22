Feature: Location

  Background:
    Given sample data has been loaded

  @poltergeist
  Scenario: As a user, when I reference the locations page, then I should see a map with amrkers for all previously-set locations
    Given I am logged on as "lion@king.org"
    When I visit the "locations" page
    Then I should see markers appear
