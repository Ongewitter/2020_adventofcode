check = {
  valid: [],
  invalid: []
}

File.readlines('./day_2_input.txt').each do |line|
  line = line.split(' ')
  first, last = line[0].split('-').map(&:to_i)
  required = line[1][0]

  if last < first || first - 1 < 0 || line[2].size < last - 1 || line[2][first - 1] == line[2][last - 1]
    check[:invalid] << line
    next
  end

  if required == line[2][first - 1] || required == line[2][last - 1]
    check[:valid] << line
  else
    check[:invalid] << line
  end
end

puts "Valid: #{check[:valid].count}"
puts "Invalid: #{check[:invalid].count}"