Feature: Edit user
  As a registered user of the site
  I want to edit my profile
  So I can change my username

    Scenario: I sign in and edit my account
      Given I am logged in
      When I edit my account details
      Then I should see an account edited message