class OrderPrinter
  def self.call(order:)
    new(order).call
  end

  attr_reader :order

  def initialize(order)
    @order = order
  end

  def call
    order.line_items.each do |line_item|
      puts "#{line_item.quantity}, #{line_item.product_name}, #{'%.2f' % line_item.total_price}"
    end

    puts "\n"
    puts "Sales Taxes: #{'%.2f' % order.total_taxes}"
    puts "Total: #{'%.2f' % order.total_price}"
  end
end
