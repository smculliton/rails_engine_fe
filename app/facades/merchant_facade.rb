class MerchantFacade
  def self.all_merchants
    MerchantService.merchants[:data].map do |merchant_data|
      Merchant.new(merchant_data)
    end
  end

  def self.get_merchant(id)
    Merchant.new(MerchantService.get_merchant(id)[:data])
  end

  def self.merchant_items(id)
    MerchantService.merchant_items(id)[:data].map do |item_data|
      Item.new(item_data)
    end
  end
end