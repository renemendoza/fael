require 'spec_helper'

describe TaxPayer do

  before(:each) do
    @attr = { 
      :entity_name => "Blue Widgets LLC",
      :entity_type => "moral",
      :tax_id => "BLW001112-KLM"
    }
  end

  it "should create a new instance given a valid attribute" do
    TaxPayer.create!(@attr)
  end
end
