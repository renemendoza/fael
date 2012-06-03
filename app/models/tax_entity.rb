class TaxEntity < ActiveRecord::Base
  attr_accessible :entity_type, :name, :tax_id
  validates :name,  :tax_id, :presence => true
  belongs_to :user
end
