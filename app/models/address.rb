class Address < ActiveRecord::Base
  attr_accessible :street_address, :street_address_2, :city, :state, :country, :postal_code
  validates :street_address, :street_address_2, :city, :state, :country, :postal_code, :presence => true
  belongs_to :tax_entity
end
