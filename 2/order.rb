require_relative 'item_container'

class Order
  attr_reader :items
  include ItemContainer

  def initialize
    @items = []
  end

  def place
    # thread = Thread.new do
    #   Pony.mail(
    #       to: StoreApplication::Admin.email,
    #       from: 'My store <mail@gmail.com>',
    #       via: :smtp,
    #       via_options: {
    #           address: 'smtp.gmail.com',
    #           port: 587,
    #           enable_starttls_auto: true,
    #           user_name: StoreApplication::Admin.email,
    #           password: StoreApplication::Admin.pass,
    #           authentication: :plain,
    #           domain: 'gmail.com',
    #       },
    #       subject: 'New order',
    #       body: 'Your order has been delivered'
    #   )
    # end
    #
    # start = 0
    # while thread.alive?
    #   start += 1
    #   puts '.' + start.to_s
    #   sleep 0.5
    # end
  end
end