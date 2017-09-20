require 'spec_helper'

RSpec.describe Order do
  let(:data1) { [1, "book", 12.49] }
  let(:data2) { [1, "music cd", 14.99] }

  let(:order) { Order.new }

  before do
    order.add_line_item(data1)
    order.add_line_item(data2)
  end

  describe '#total_price' do
    it do
      expect(order.total_price).to eq(28.98)
    end
  end

  describe '#sub_total' do
    it do
      expect(order.sub_total).to eq(27.48)
    end
  end

  describe '#total_taxes' do
    it do
      expect(order.total_taxes).to eq(1.5)
    end
  end
end
