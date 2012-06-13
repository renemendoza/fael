# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    street_address "Coahuila 122 L301"
    street_address_2 "Colonia Roma Sur"
    city "Cuauhtemoc"
    state "Distrito Federal"
    country "Mexico"
    postal_code "06760"
  end
end
