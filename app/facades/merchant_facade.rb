class MerchantFacade
  def self.all_merchants
    MerchantService.merchants[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end
end