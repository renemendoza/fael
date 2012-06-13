Then /^i should be able to create an Invoice$/ do
  @user.can_create_invoices?.should be_true
end
