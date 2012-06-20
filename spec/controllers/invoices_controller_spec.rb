require 'spec_helper'

describe InvoicesController do
  describe "When User has no customers or no valid tax_entity data" do
    before (:each) do
      @user = FactoryGirl.create(:user)
      sign_in @user
    end

    describe "GET 'new'" do
      it "should be successful" do
        get :new, :user_id => @user.id
        response.should redirect_to(:action => 'index')
      end
    end
  end
  describe "When User can create invoices" do
    before (:each) do
      @user = FactoryGirl.create(:user)
      @user.tax_entity( FactoryGirl.create(:tax_entity) )
      @user.customers.create ( FactoryGirl.attributes_for(:customer) )
      #raise "#{@user.can_create_invoices?} -- #{@user.inspect} -- #{@user.tax_entity.inspect} -- #{@user.customers.inspect}"
      sign_in @user
    end

    describe "GET 'new'" do
      it "should be successful" do
        get :new, :user_id => @user.id
        response.should be_success
      end
    end
  end
end
