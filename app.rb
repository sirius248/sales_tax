require_relative "./lib/order_factory"
require_relative "./lib/order_printer"

file_path = File.absolute_path(ARGV[0])

data = []
File.new(file_path).readlines.each do |line|
  data << line.split(",").map(&:strip)
end

order = OrderFactory.create(data: data)
OrderPrinter.call(order: order)
