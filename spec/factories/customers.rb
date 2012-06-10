FactoryGirl.define do
  factory :customer do
    name "Crazy Widgets LLC"
    tax_id "CWL123456"
    entity_type "MyString"
    association :address, :strategy => :build
    association :user, :strategy => :build
  end
end
