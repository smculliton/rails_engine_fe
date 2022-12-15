class MerchantsController < ApplicationController
  def index
    @merchants = MerchantFacade.all_merchants
  end

  def show
    #@merchant = MerchantFacade.get_merchant(params[:id])
  end
end