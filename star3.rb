check = {
  valid: [],
  invalid: []
}
File.readlines('./day_2_input.txt').each do |line|
  line = line.split(' ')
  min, max = line[0].split('-').map(&:to_i)
  required = line[1][0]
  occurences = line[2].scan(/#{required}/).count
  if min <= occurences && max >= occurences
    check[:valid] << line
  else
    check[:invalid] << line
  end
end
puts "Valid: #{check[:valid].count}"
puts "Invalid: #{check[:invalid].count}"