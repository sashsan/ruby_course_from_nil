class Dog
  @@value = 'Ruby'

  def initialize(value)
    @value = value
  end

  def voice
    p "#{@value} #{@@value}"
  end

  class << self
    attr_accessor :value

    def voice
      p "#{@value} #{@@value}"
    end
  end
end


dog = Dog.new('gav')
dog.voice

Dog.value  = 'gav from class'
Dog.voice