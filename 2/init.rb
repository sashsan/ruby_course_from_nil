require_relative 'store_application'

StoreApplication.set do |app|
  app.name        = 'Ruby App'
  app.environment = :development

  app.admin do |admin|
    admin.email = 'admin@mail.com'
    admin.login = 'admin'
  end
end

@items = []

@items << VirtualItem.new('virt', price: 260, weight: 200)
@items << AntiqueItem.new('ant',  price: 240, weight: 200)
@items << RealItem.new(name: 'real', price: 230, weight: 200)
@items << RealItem.new(name: 'real', price: 220, weight: 200)

cart = Cart.new('amg')
cart.add_item(RealItem.new({price:  270,weight: 300,name: 'car'}))
cart.add_item(RealItem.new({price:  270,weight: 300,name: 'car'}))
cart.add_item(RealItem.new({price:  270,weight: 300,name: 'bike'}))


p cart.send :all_cars






