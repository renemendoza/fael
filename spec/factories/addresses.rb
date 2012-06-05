# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :address do
    calle "Coahuila"
    numero_ext "122"
    numero_int "L301"
    colonia "Roma Sur"
    municipio "Cuauhtemoc"
    estado "Distrito Federal"
    pais "Mexico"
    codigo_postal "06760"
  end
end
