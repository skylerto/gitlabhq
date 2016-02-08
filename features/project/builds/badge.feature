Feature: Project Builds Badge
  Background:
    Given I sign in as a user
    And I own a project
    And project has CI enabled
    And project has a recent build

  Scenario: I want to see a badge for successfully built project
    Given recent build is successfull
    When I display builds badge for a master branch
    Then I should see a build success badge

  Scenario: I want to see a badge for project with filed builds
    Given recent build failed
    When I display builds badge for a master branch
    Then I should see a build failed badge

  Scenario: I want to see a badge for project with running builds
    Given recent build is successfull
    And project has an another build that is running
    When I display builds badge for a master branch
    Then I should see a build running badge
