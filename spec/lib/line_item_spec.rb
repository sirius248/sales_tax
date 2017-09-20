require 'spec_helper'

RSpec.describe LineItem do
  let(:data1) { [1, "book", 12.49] }
  let(:data2) { [1, "music cd", 14.99] }

  let(:line_item1) { LineItem.new(data1) }
  let(:line_item2) { LineItem.new(data2) }

  describe "#quantity" do
    it do
      expect(line_item1.quantity).to eq(1)
      expect(line_item2.quantity).to eq(1)
    end
  end

  describe "#product_name" do
    it do
      expect(line_item1.product_name).to eq("book")
      expect(line_item2.product_name).to eq("music cd")
    end
  end

  describe "#price" do
    it do
      expect(line_item1.price).to eq(12.49)
      expect(line_item2.price).to eq(14.99)
    end
  end

  describe "#tax" do
    it do
      expect(line_item1.tax).to eq(0.0)
      expect(line_item2.tax).to eq(1.5)
    end
  end

  describe "#total_price" do
    it do
      expect(line_item1.total_price).to eq(12.49)
      expect(line_item2.total_price).to eq(16.49)
    end
  end
end
