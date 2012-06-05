module UsersHelper
  def setup_address(tax_entity) 
    tax_entity.address ||= Address.new
    tax_entity
  end
end
