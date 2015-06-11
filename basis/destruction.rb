#破壊的メソッドの利用
arr = ("a".."f").to_a

tmp = arr
puts "基本となる配列arr: #{arr}"
puts "配列arrを参照するtmp: #{tmp}"

puts "---"

# 非破壊的メソッド
arr2 = arr.reverse
puts "非破壊的メソッド: #{arr2}"
puts "非破壊的メソッド実行後のarr: #{arr}"

puts "---"

#破壊的メソッド
arr3 = arr.reverse!
puts "破壊的メソッド: #{arr3}"
puts "破壊的メソッド実行後のarr: #{arr}"

puts "---"

puts "破壊的メソッド実行後のtmp: #{tmp}"
