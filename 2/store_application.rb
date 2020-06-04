class StoreApplication
  class << self
    def new
      unless @store
        puts 'loading classes'
        require_relative 'item'
        require_relative 'cart'
        require_relative 'order'
        require_relative 'virtual_item'
        require_relative 'real_item'
        require_relative 'item_container'
        require_relative 'string'
        require_relative 'antique_item'
        require 'active_support/core_ext'
      end

      @store ||= self
    end
  end
end