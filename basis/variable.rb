# 変数
var = 10
var2 = "Hoge"

puts var
puts var2

var3,var4 = "Huga","Piyo"

puts var3
puts var4

# ローカルブロック変数
# ブロック変数;のあとに記述
[1,2,3,4,5].each do |num; var|
  var = num
  # ローカルブロック変数表示
  puts "local_block:#{var}"
end

# ローカル変数表示
puts "local:#{var}"
