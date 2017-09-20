require_relative "./tax_rate"

class LineItem
  class LineItemArgumentError < StandardError; end

  attr_reader :line, :tax

  def initialize(line = [])
    raise LineItemArgumentError if line.size < 3
    @line = line
    @tax = TaxRate.new(product_name, price).apply
  end

  def quantity
    line[0].to_i
  end

  def product_name
    line[1]
  end

  def price
    line[2].to_f.round(2) * quantity
  end

  def total_price
    (tax + price).round(2)
  end
end
