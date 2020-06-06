class RealItem < Item
  attr_accessor :weight

  def initialize(options)
    @weight = options[:weight]
    super(options[:name], options)
  end

  def info
    if block_given?
      yield weight
      super
    end
  end

  def to_s
    super + ":#{self.weight}"
  end
end