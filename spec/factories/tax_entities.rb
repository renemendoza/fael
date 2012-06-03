# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tax_entity do
    name "Crazy Widgets LLC"
    tax_id "CWL123456"
    entity_type "MyString"
  end
end
