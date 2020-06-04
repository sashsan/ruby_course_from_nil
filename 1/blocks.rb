array = %w[Dasha Masha Pasha]
hash  = { name: 'Dasha', age: 21, height: 175 }

array.each { |name| puts name }
2.times { puts 'Hello Ruby' }
hash.each_key { |i| puts i }

puts '____'
array.each_with_index { |value, index| puts value if index == 2}


File.open("block.txt", "w") { |y| y.puts "hello ruby" }


