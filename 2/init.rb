require_relative 'item'
require_relative 'cart'
require_relative 'order'
require_relative 'virtual_item'
require_relative 'real_item'
require_relative 'item_container'
require_relative 'string'
require_relative 'antique_item'
require 'active_support/core_ext'


@items = []

@items << VirtualItem.new('virt', price: 260, weight: 200)
@items << AntiqueItem.new('ant',  price: 240, weight: 200)
@items << RealItem.new(name: 'real', price: 230, weight: 200)
@items << RealItem.new(name: 'real', price: 220, weight: 200)

cart = Cart.new('amg')
cart.add_item(RealItem.new({
               price:  270,
               weight: 300,
               name: 'car'
             }))
cart.add_item(RealItem.new({
               price:  270,
               weight: 300,
               name: 'car'
           }))
cart.add_item(RealItem.new({
               price:  270,
               weight: 300,
               name: 'bike'
           }))


p cart.send :all_cars






