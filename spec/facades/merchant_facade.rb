require 'rails_helper'

RSpec.describe MerchantFacade do 
  describe 'class methods' do 
    describe '#all_merchants' do 
      it 'creates merchant objects based on merchant api call' do 
        merchants = MerchantFacade.all_merchants
        expect(merchants.first).to be_a Merchant
      end
    end
  end
end