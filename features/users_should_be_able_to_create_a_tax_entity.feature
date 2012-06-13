@http://www.pivotaltracker.com/story/show/30585033
Feature: Users should be able to create a Tax Entity
  As a logged in user
  I want to be able to create a Tax Entity
  So that I can use the Tax Entity information when creating Invoices
  
  Scenario: User successfully creates a Tax Entity
  Given I am logged in
  When I create a Tax Entity
  Then I should have one Tax Entity
