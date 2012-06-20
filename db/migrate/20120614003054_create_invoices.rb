class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :vendor_id
      t.integer :customer_id
      t.datetime :date_issued
      t.string :currency
      t.string :notes
      t.decimal :pretax_total
      t.decimal :total

      t.timestamps
    end
  end
end
