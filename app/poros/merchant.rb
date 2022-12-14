class Merchant
  attr_reader :name

  def initialize(data)
    @id = data[:id].to_i
    @name = data[:attributes][:name]
  end
end