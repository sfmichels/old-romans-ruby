#!/usr/bin/ruby -w
# Old Roman Numerals didn't use substraction
# 9 was VIIII, not IX

puts 'enter an integer:'
num = gets
if num.to_i != num.to_f
  puts 'num is not an integer'
else
  str = ''
  num = num.to_i
  puts 'the number: ' + num.to_s

  thousands = num / 1000
  if thousands > 0
    str += 'M' * thousands
    num = num - thousands * 1000
  end

  if num >= 500
    str += 'D'
    num -= 500
  end

  if num > 100
    hundreds = num / 100
    str += 'C' * hundreds
    num -= 100 * hundreds
  end

  if num >= 50
    str += 'L'
    num -= 50
  end

  tens = num / 10
  if tens > 0
    str += 'X' * tens
    num = num - tens * 10
  end

  if num >= 5
    str += 'V'
    num -= 5
  end

  if num > 0
    str += 'I' * num
  end

  puts 'Old Roman: ' + str
end