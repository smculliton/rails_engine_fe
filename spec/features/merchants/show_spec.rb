require 'rails_helper'

RSpec.describe 'the Merchant show' do 
  before(:each) do 
    @merchant = MerchantFacade.all_merchants.first

    visit merchant_path(@merchant.id)
  end

  it 'has merchants name' do 
    expect(page).to have_content(@merchant.name)
  end
end