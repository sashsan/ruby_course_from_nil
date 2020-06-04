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

@items << VirtualItem.new({
            price:  240,
            weight: 200,
            name: 'virt'
            })

@items << AntiqueItem.new({
            price:  240,
            weight: 200,
            name: 'ant'
        })

@items << RealItem.new({
            price:  270,
            weight: 300,
            name: 'car'
           })

@items << RealItem.new({
            price:  250,
            weight: 310,
            name: 'bike'
           })


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

p cart.kind_of? Cart
p @items.first.kind_of? Item
p @items.first.respond_to? :price

p @items.first.send :tax
p @items.first.tax








