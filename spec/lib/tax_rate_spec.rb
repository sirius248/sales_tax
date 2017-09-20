require 'spec_helper'

RSpec.describe TaxRate do
  let(:data1) { [1, "book", 12.49] }
  let(:data2) { [1, "music cd", 14.99] }

  describe '#apply' do
    it "calculate correct tax rate" do
      expect(TaxRate.new(data1[1], data1[2]).apply).to eq(0.0)
      expect(TaxRate.new(data2[1], data2[2]).apply).to eq(1.5)
    end
  end
end
