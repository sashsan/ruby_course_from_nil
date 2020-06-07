require 'rspec'
require_relative '../item'
require_relative '../virtual_item'
require_relative '../real_item'


describe RealItem do
  context 'when info about' do

    it 'returns weight if conditional is true' do
      item1 = RealItem.new(name: 'car', price: 200, weight: 5)
      item2 = RealItem.new(name: 'bike', price: 250, weight: 12)

      item_info1 = []
      item_info2 = []

      item1.info { |attr| item_info1 << attr }
      item2.info { |attr| item_info2 << attr }

      expect(item_info1.join(',')).to include('240.0,car')
      expect(item_info2.join(',')).to include('12,299.5,bike')
    end
  end
end