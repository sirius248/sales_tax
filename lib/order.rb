require_relative "./line_item"

class Order
  attr_reader :line_items

  def initialize
    @line_items = []
  end

  def add_line_item(data_row)
    @line_items << LineItem.new(data_row)
  end

  def total_price
    (sub_total + total_taxes).round(2)
  end

  def sub_total
    line_items.map(&:price).reduce(:+).round(2)
  end

  def total_taxes
    line_items.map(&:tax).reduce(:+).round(2)
  end
end
