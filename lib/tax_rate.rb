require_relative "./tax_category/import"
require_relative "./tax_category/sales"

class TaxRate
  attr_reader :price, :product_name

  def initialize(product_name, price)
    @product_name = product_name
    @price = price
  end

  def apply
    TaxCategory::Sales.new(product_name, price).compute +
    TaxCategory::Import.new(product_name, price).compute
  end
end
