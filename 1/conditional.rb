if 2 < 1
  puts 'yes'
else
  puts 'no'
end

puts 'yes' unless 2 < 1
puts 'yes' if 2 < 1

name = 'Masha'

if name == 'Dasha'
  puts 'My name is ' + name
elsif name == 'Pasha'
  puts 'My name is ' + name
elsif name == 'Masha'
  puts 'My name is ' + name
end

if name == 'Masha' && 1 < 2
  puts 'My name is ' + name
end

if name == 'Masha' || 1 < 2 && name != 'Dasha'
  puts 'My name is ' + name
end