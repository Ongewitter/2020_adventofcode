numbers = File.readlines('./star_1_input.txt').map(&:strip).map(&:to_i).sort
numbers.each do |number|
  numbers.each do |addition|
      numbers.each do |another_addition|
      break if number + addition + another_addition > 2020
      if number + addition + another_addition== 2020
        puts number, addition, another_addition
        return puts number * addition  * another_addition
      end
    end
  end
  puts 'no combination found' if number == numbers.last
end