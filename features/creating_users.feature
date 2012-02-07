Feature: Creating users
  In order to have users to assign interests to
  As a user
  I want to create them easily

  Background: 
    Given I am on the homepage
    When I follow "Sign Up"

  Scenario: Creating a user
    And I fill in "Name" with "Generic Man"
    And I fill in "Email" with "generic@generic.com"
    And I press "Join Techmeet"
    Then I should see "Welcome to Techmeet"
    And I should be on the user page for "Generic Man"
    And I should see "Techmeet | Generic Man"

  Scenario: Creating a user without a name
    And I fill in "Email" with "generic@generic.com"
    And I press "Join Techmeet"
    Then I should see "User account has not been created."
    And I should see "Name can't be blank"

  Scenario: Creating a user without an email
    And I fill in "Name" with "Generic Man"
    And I press "Join Techmeet"
    Then I should see "User account has not been created."
    And I should see "Email can't be blank"

  Scenario: Creating a user without a name or email
    And I press "Join Techmeet"
    Then I should see "User account has not been created."
    And I should see "Name can't be blank"
    And I should see "Email can't be blank"
