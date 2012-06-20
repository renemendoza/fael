def generate_customer_data
  @sample_tax_entity ||= FactoryGirl.build(:customer)
end

def create_customer
  visit "/users/#{@user.id}/customers/new"
  set_tax_entity_data
  fill_in_tax_entity_data
  click_button "Create"
end

When /^I create a Customer$/ do
  create_customer
end

Then /^I should have one Customer$/ do
  @user.customers.should_not be_nil
  @user.customers.size.should be(1)
  @user.customers.first.should be_valid
end
