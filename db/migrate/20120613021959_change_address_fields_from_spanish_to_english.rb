class ChangeAddressFieldsFromSpanishToEnglish < ActiveRecord::Migration
  def up
    change_table :addresses do |t|
      t.string :street_address
      t.string :street_address_2
      t.string :city
      t.string :state
      t.string :country
      t.string :postal_code
    end
    remove_column :addresses, :calle, :numero_ext, :numero_int, :colonia, :municipio, :estado, :pais, :codigo_postal
  end

  def down
    change_table :addresses do |t|
      t.string :calle
      t.string :numero_ext
      t.string :numero_int
      t.string :colonia
      t.string :municipio
      t.string :estado
      t.string :pais
      t.string :codigo_postal
    end
    remove_column :addresses, :street_address, :street_address_2, :city, :state, :country, :postal_code
  end
end
