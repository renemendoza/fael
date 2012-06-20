@http://www.pivotaltracker.com/story/show/30971017
Feature: User can create invoices
  As a logged in user
  I want to be able to create an Invoice for a Customer
  So that I can get paid on time
  Scenario: User successfully creates an Invoice
  Given I am logged in
  And I can create invoices
  When I create an Invoice
  Then the invoice should be valid
