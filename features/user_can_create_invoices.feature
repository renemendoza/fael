@http://www.pivotaltracker.com/story/show/30971017
Feature: User can create invoices
  As a logged in user
  I want to be able to create a Customer
  So that I can issue an invoice for her
  Scenario: User successfully creates a Customer
  Given I am logged in
  When I create a Tax Entity
  And I create a Customer
  Then i should be able to create an Invoice
