numbers = File.readlines('./star_1_input.txt').map(&:strip).map(&:to_i).sort
numbers.each do |number|
  numbers.each do |addition|
    break if number + addition > 2020
    if number + addition == 2020
      puts number, addition
      return puts number * addition 
    end
  end
  puts 'no combination found' if number == numbers.last
end