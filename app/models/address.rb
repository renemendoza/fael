class Address < ActiveRecord::Base
  attr_accessible :calle, :codigo_postal, :colonia, :estado, :municipio, :numero_ext, :numero_int, :pais
  validates :calle, :codigo_postal, :estado, :municipio, :numero_ext, :pais, :presence => true
  belongs_to :tax_entity
end
