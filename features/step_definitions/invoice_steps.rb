def set_invoice_data
  @sample_invoice ||= FactoryGirl.build(:invoice)
end

def create_invoice
  visit "/users/#{@user.id}/invoices/new"
end


Given /^I can create invoices$/ do
  create_tax_entity
  create_customer
  expect { @user.can_create_invoices? }.to_not raise_error
  @user.can_create_invoices?.should be_true
end

When /^I create an Invoice$/ do
  create_invoice
end

Then /^the invoice should be valid$/ do
  pending # express the regexp above with the code you wish you had
end
