require 'rails_helper'

RSpec.describe 'the Merchant index' do 
  before(:each) do 
    VCR.use_cassette('merchants') do 
      visit merchants_path
    end
    VCR.use_cassette('merchants') do
      @merchants = MerchantFacade.all_merchants
    end
  end
  it 'shows a list of all merchants' do 
    expect(page).to have_link(@merchants.first.name)
    expect(page).to have_link(@merchants.last.name)
  end

  it 'each merchant name links to their merchant show page' do 
    VCR.use_cassette('merchant') do 
      VCR.use_cassette('merchant1_items') do
        click_link @merchants.first.name
        expect(current_path).to eq(merchant_path(@merchants.first.id))
      end
    end
  end
end