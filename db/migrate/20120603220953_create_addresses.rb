class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :calle
      t.string :numero_ext
      t.string :numero_int
      t.string :colonia
      t.string :municipio
      t.string :estado
      t.string :pais
      t.string :codigo_postal
      t.integer :tax_entity_id

      t.timestamps
    end
  end
end
