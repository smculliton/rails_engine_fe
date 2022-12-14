require 'rails_helper'

RSpec.describe MerchantService do 
  describe 'class methods' do 
    describe '#merchants' do 
      it 'gets merchant data' do
        merchants = MerchantService.merchants

        expect(merchants[:data]).to be_a Array
      end
    end
  end
end