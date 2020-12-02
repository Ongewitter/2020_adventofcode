numbers = File.readlines('./day_1_input.txt').map(&:strip).map(&:to_i).sort

[2, 3].map do |part|
  puts numbers.permutation(part) { |perm| break perm if perm.sum == 2020 }.inject(:*)
end