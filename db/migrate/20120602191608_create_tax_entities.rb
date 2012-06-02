class CreateTaxEntities < ActiveRecord::Migration
  def change
    create_table :tax_entities do |t|
      t.string :name
      t.string :tax_id
      t.string :entity_type
      t.integer :user_id

      t.timestamps
    end
  end
end
