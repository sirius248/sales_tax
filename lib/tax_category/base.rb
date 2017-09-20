module TaxCategory
  class Base
    attr_reader :product_name, :price

    def initialize(product_name, price)
      @product_name = product_name
      @price = price
    end

    def compute
      (price * percentage * 20.0).ceil / 20.0
    end
  end
end
