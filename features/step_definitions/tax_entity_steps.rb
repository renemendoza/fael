
def set_tax_entity_data
  @sample_tax_entity ||= { :name => "Blue Widgets LLC", :tax_id => "BLW001112KLM" }
end

def create_tax_entity
  #set_tax_entity_data
  #visit '/tax_entities/new'
#  @tax_entity = FactoryGirl.create(:tax_entity, tax_id: @sample_tax_entity[:tax_id])
end

def find_tax_entity
  @tax_entity ||= TaxEntity.first conditions: {:tax_id => @sample_tax_entity[:tax_id], 
:user_id => @user.id}
end

When /^I create a Tax Entity$/ do
  set_tax_entity_data
  visit "/users/#{@user.id}/tax_entities/new"
  fill_in "Name", :with => @sample_tax_entity[:name]
  fill_in "Tax ID", :with => @sample_tax_entity[:tax_id]
  click_button "Create"
end

Then /^I should have one Tax Entity$/ do
  @user.tax_entity.should be(1)
  #pending # express the regexp above with the code you wish you had
end

Then /^I should be able to create Invoices$/ do
  pending # express the regexp above with the code you wish you had
end

