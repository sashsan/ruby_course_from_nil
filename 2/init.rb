require_relative 'store_application'

StoreApplication.set do |app|
  app.name        = 'Ruby App'
  app.environment = :development

  app.admin do |admin|
    admin.email = 'sansashadev@gmail.com'
    admin.pass  = 'tbjd cqbb sumz uzdz'
    admin.login = 'admin'
  end
end

unless StoreApplication.frozen?
  StoreApplication.name = 'New name'
  StoreApplication::Admin.email = 'new@admin.com'
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

order = Order.new
order.place

p order.placed_at.strftime('%b %-d')
p order.end_sending





