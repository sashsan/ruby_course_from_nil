require 'rspec'
require_relative '../item'
require_relative '../virtual_item'

describe Item do

  it 'calculates correctly price' do
    item = Item.new('car', price: 300)
    expect(item.price).to be 242.0
  end
end
