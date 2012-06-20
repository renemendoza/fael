class Invoice < ActiveRecord::Base
  attr_accessible :currency, :customer_id, :date_issued, :notes, :pretax_total, :total, :vendor_id
end
