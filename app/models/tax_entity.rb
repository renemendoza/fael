class TaxEntity < ActiveRecord::Base
  attr_accessible :entity_type, :name, :tax_id, :user_id
  belongs_to :user
end
