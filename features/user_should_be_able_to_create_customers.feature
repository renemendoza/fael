@http://www.pivotaltracker.com/story/show/30955597
Feature: User should be able to create customers
  As a logged in user
  I want to be able to create a Customer
  So that I can issue an invoice for her
  Scenario: User successfully creates a Customer
  Given I am logged in
  When I create a Customer
  Then I should have one Customer
  And I should be able to create Invoices
