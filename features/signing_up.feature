Feature: Signing up
In order to be able to search other users
As a user
I want to be able to signup

Scenario: Signing up
  Given I am on the homepage
  When I follow "Sign Up"
  And I fill in "Name" with "UserName"
  And I fill in "Email" with "user@techmeet.com"
  And I fill in "Password" with "password"
  And I fill in "Password confirmation" with "password"
  And I press "Join Techmeet"
  Then I should see "Welcome to Techmeet"

