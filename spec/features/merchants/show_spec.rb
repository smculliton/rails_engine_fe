require 'rails_helper'

RSpec.describe 'the Merchant show' do 
  before(:each) do 
    @merchant = MerchantFacade.all_merchants.first
    @items = MerchantFacade.merchant_items(@merchant.id)

    visit merchant_path(@merchant.id)
  end

  it 'has merchants name' do 
    expect(page).to have_content(@merchant.name)
  end

  it 'lists all of the merchants items' do 
    @items.each do |item|
      expect(page).to have_content(item.name)
    end
  end
end