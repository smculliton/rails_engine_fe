require 'rails_helper'

RSpec.describe 'the Merchant show' do 
  before(:each) do 
    VCR.use_cassette('merchant') do 
      @merchant = MerchantFacade.get_merchant(1)
    end
    VCR.use_cassette('merchant1_items') do 
      @items = MerchantFacade.merchant_items(@merchant.id)
    end

    VCR.use_cassette('merchant') do 
      VCR.use_cassette('merchant1_items') do
        visit merchant_path(@merchant.id)
      end
    end
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