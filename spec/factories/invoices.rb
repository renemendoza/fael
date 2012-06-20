# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :invoice do
    vendor_id 1
    customer_id 1
    date_issued "2012-06-13 19:30:54"
    currency "MyString"
    notes "MyString"
    pretax_total "9.99"
    total "9.99"
  end
end
