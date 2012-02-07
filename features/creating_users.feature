Feature: Creating users
  In order to have users to assign interests to
  As a user
  I want to create them easily

  Scenario: Creating a user
    Given I am on the homepage
    When I follow "Sign Up"
    And I fill in "Name" with "Generic Man"
    And I fill in "Email" with "generic@generic.com"
    And I press "Join Techmeet"
    Then I should see "Welcome to Techmeet"
