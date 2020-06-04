require_relative 'init'
require_relative 'cart'


owner = ARGV.delete_at(0)
cart  = Cart.new(owner)

ARGV.each do |arg|
  @items.each { |obj| cart.add_item obj if arg == obj.name }
end

cart.read_from_file
begin
  cart.save_to_file
rescue ItemNotSupported
  puts "  You have VirtualItem or AntiqueItem in your cart
  Unsupported Items type: #{Cart::UNSUPPORTED_ITEM}"
end


