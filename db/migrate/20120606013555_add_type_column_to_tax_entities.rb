class AddTypeColumnToTaxEntities < ActiveRecord::Migration
  def change
    add_column :tax_entities, :type, :string
  end
end
