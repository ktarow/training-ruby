
def odd?(n)
  case n % 2
  when 0 
    false
  when 1
    true
  else
    raise "Error"
  end
end

while num = gets()
  unless /\A-?\d+\Z/ =~ num
    # エラー出力
    $stderr.puts "整数を入力してください" 
    next
  end

  # 標準入力された値はStringのためキャストする必要あり
  num = num.to_i
  if odd?(num)
    $stdout.puts "奇数"
  else
    $stdout.puts "偶数"
  end
end
