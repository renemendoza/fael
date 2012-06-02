class TaxEntitiesController < ApplicationController
  before_filter :authenticate_user!

  respond_to :html, :xml, :json

  def new
    @user = User.find(params[:user_id])
    @tax_entity = @user.build_tax_entity
    respond_with @tax_entity
  end

  def create
    #@user = User.find(params[:user_id])
    @tax_entity = TaxEntity.new(params[:tax_entity])
    flash[:notice] = "#{t(:tax_entity_info)} (#{@tax_entity.name}) #{t(:successfully_created)}" if @tax_entity.save
    respond_with(@tax_entity.user)
  end
end
