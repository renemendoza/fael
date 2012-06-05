
def set_tax_entity_data
  @sample_tax_entity ||= FactoryGirl.build(:tax_entity)
end


When /^I create a Tax Entity$/ do
  set_tax_entity_data
  visit "/users/#{@user.id}/tax_entities/new"
  fill_in "Legal Name",     :with => @sample_tax_entity[:name]
  fill_in "Tax ID",         :with => @sample_tax_entity[:tax_id]
  fill_in "Street Address", :with => @sample_tax_entity.address.calle
  fill_in "Ext Number",     :with => @sample_tax_entity.address.numero_ext
  fill_in "Municipio",      :with => @sample_tax_entity.address.municipio
  fill_in "State",          :with => @sample_tax_entity.address.estado
  fill_in "Country",        :with => @sample_tax_entity.address.pais
  fill_in "Postal Code",    :with => @sample_tax_entity.address.codigo_postal
  click_button "Create"
end

Then /^I should have one Tax Entity$/ do
  @user.tax_entity.should_not be_nil
end

Then /^I should be able to create Invoices$/ do
  pending # express the regexp above with the code you wish you had
end

