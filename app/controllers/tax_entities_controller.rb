class TaxEntitiesController < ApplicationController
  before_filter :authenticate_user!

  respond_to :html, :xml, :json

  def new
    @user = User.find(params[:user_id])
    respond_with(  @tax_entity = build_tax_entity )
  end

  def create
    @user = current_user
    @tax_entity = build_tax_entity
    flash[:notice] = "#{t(:tax_entity_info)} (#{@tax_entity.name}) #{t(:successfully_created)}" if @tax_entity.save
    respond_with(@user)
  end


  private
  def build_tax_entity
    case params[:type]
    when "Customer"
      @user.customers.build( params[:customer] )
    #when "Vendor"
      #@user.vendor.build( params[:vendor] )
    else
      @user.build_tax_entity( params[:tax_entity] )
    end
  end
end
