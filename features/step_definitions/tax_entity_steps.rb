def set_tax_entity_data
  @sample_tax_entity ||= FactoryGirl.build(:tax_entity)
end


def fill_in_tax_entity_data
  fill_in "Legal Name",             :with => @sample_tax_entity[:name]
  fill_in "Tax ID",                 :with => @sample_tax_entity[:tax_id]
  fill_in "Street Address",         :with => @sample_tax_entity.address.street_address
  fill_in "Street Address Line 2",  :with => @sample_tax_entity.address.street_address_2
  fill_in "City",                   :with => @sample_tax_entity.address.city
  fill_in "State",                  :with => @sample_tax_entity.address.state
  select( @sample_tax_entity.address.country, :from => 'Country')
  fill_in "Postal Code",            :with => @sample_tax_entity.address.postal_code
end


def create_tax_entity
  visit "/users/#{@user.id}/tax_entities/new"
  set_tax_entity_data
  fill_in_tax_entity_data
  click_button "Create"
end

When /^I create a Tax Entity$/ do
  create_tax_entity
end

Then /^I should have one Tax Entity$/ do
  @user.tax_entity.should_not be_nil
  @user.tax_entity.should be_valid
end


