# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :tax_entity do
    name "MyString"
    tax_id "MyString"
    entity_type "MyString"
    user_id 1
  end
end
