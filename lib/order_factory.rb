require_relative "./order"

class OrderFactory
  def self.create(data:)
    new(data).create
  end

  attr_reader :data, :order

  def initialize(data)
    @data = data
    @order = Order.new
  end

  def create
    data.each do |data_row|
      order.add_line_item(data_row)
    end

    order
  end
end
