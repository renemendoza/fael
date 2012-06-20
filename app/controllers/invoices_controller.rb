class InvoicesController < ApplicationController
  before_filter :authenticate_user!

  respond_to :html, :xml, :json

  def new
    @user = User.find(params[:user_id])
    begin
      @invoice = @user.tax_entity.invoices.build 
      respond_with( @invoice )
    rescue 
      flash[:notice] = 'Cant Create Invoices without valid Customers or TaxEntity data'
      redirect_to :action => 'index'
      return
    end
  end

  def index
    @user = User.find(params[:user_id])
    respond_with( @invoices = @user.invoices )
  end

end
