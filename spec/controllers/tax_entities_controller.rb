require 'spec_helper'

describe TaxEntitiesController do

  before (:each) do
    @user = FactoryGirl.create(:user)
    sign_in @user
  end

  describe "GET 'new'" do
    it "should be successful" do
      get :new, :user_id => @user.id
      response.should be_success
    end

  end
  describe "POST 'create'" do

    before(:each) do
      @tax_entity = @user.build_tax_entity( FactoryGirl.attributes_for(:tax_entity) )
      TaxEntity.stub(:new).and_return(@tax_entity)
    end

    it "creates a tax entity" do
      TaxEntity.should_receive(:new).and_return(@tax_entity)
      post :create
    end

    it "saves the tax entity" do
      @tax_entity.should_receive(:save)
      post :create
    end

    describe "when the tax_entity saves succesfully" do
      it "sets a flash[:notice] message" do
        post :create
        flash[:notice].should_not be_nil
      end

      it "redirects to User page" do
        post :create
        response.should redirect_to( user_path(@user) )
      end
    end


  end


end
