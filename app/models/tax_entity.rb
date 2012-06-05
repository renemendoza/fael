class TaxEntity < ActiveRecord::Base
  attr_accessible :entity_type, :name, :tax_id, :address_attributes
  validates :name,  :tax_id, :presence => true
  has_one :address, :validate => true, :dependent => :destroy
  accepts_nested_attributes_for :address
  belongs_to :user
end
