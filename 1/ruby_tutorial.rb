class RubyTutorial

  def self.description
    a,b,c = 1,2,3
    a ? b : c
    for i in 0..5
      p i
    end
    for i in 0...5
      p i
    end
    p '_____'

    array = %w[sasha dasha pasha]
    array.map {|i| p i }
    array.map(&method(:p))
    array.each(&method(:p))
    p '_____'

    p 1.class
    p "sas".class
    p false.class
    p nil.class
    p '_____'

    p 1.to_f
    p 1.to_s
    p 1.to_i
    p '_____'

    p rand(1..10)
    p rand(1...10)
    p '_____'

    p 'SASHA'.downcase
    p 'sasha'.upcase
    p 'sa da ma za'.capitalize
    p '_____'

    string = "sasha masha"
    p string.chars
    p '_____'

    p string.split
    p '_____'

    array = %w[sasha dasha pasha]
    p array.find_index("sasha")
    p '_____'

    array = [1, 20, 3, 4]
    array.find_all { |num| p num.odd? unless num.nil?}
    array.find_all { |num| p true }
    p '_____'
    array.find { |num| p num.even? }
    p '_____'
    array.map {|str| p str.to_s.length }
    p '_____'

    hash = { car: 'audi', name: 'a8', engine: 'v12' }
    p hash.reverse_each.to_h
    p '_____'

    [["audi", "black", 2008], ["bmw", "red", 2014]].each do |make, color, year|
      puts "car: #{make}, color: #{color}, year: #{year}"
    end

    p '_____'
    hash = { car: 'audi', name: 'a8', engine: 'v12' }
    p hash.empty?
    p hash.size
    p hash.keys
    p hash.include? :car
    p hash.sort


  end
end


RubyTutorial.description