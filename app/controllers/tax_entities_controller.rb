class TaxEntitiesController < ApplicationController
  before_filter :authenticate_user!

  def new
    @user = User.find(params[:user_id])
    @tax_entity = @user.build_tax_entity
  end
end
