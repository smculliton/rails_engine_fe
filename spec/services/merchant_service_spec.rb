require 'rails_helper'

RSpec.describe MerchantService do 
  describe 'class methods' do 
    describe '#merchants' do 
      it 'gets merchant data' do
        VCR.use_cassette('merchants') do 
          merchants = MerchantService.merchants

          expect(merchants[:data]).to be_a Array
        end
      end
    end

    describe '#get_merchant' do 
      it 'returns merchant information' do 
        VCR.use_cassette('merchant') do 
          merchant = MerchantService.get_merchant(1)

          expect(merchant[:data]).to be_a Hash
        end
      end
    end

    describe '#merchant_items' do 
      it 'returns merchants items' do 
        VCR.use_cassette('merchant1_items') do 
          items = MerchantService.merchant_items(1)
                  
          expect(items[:data]).to be_a Array
        end
      end
    end
  end
end