class TaxEntity < ActiveRecord::Base
  attr_accessible :entity_type, :name, :tax_id, :address_attributes
  validates :name,  :tax_id, :presence => true
  has_one :address, :validate => true, :dependent => :destroy
  accepts_nested_attributes_for :address
  belongs_to :user
  has_many :invoices, :foreign_key => 'vendor_id', :dependent => :destroy, :before_add => :check_if_user_can_create_invoices

  def check_if_user_can_create_invoices(tax_entity)
    user.can_create_invoices?
  end
end
