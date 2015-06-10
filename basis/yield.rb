
def hoge
    print "Hoge "
    yield
end

arr = ["Ruby","Java","PHP"]

arr.each do |var|
    hoge do 
        puts var
    end
end

# 呼び出しより後に定義するとエラー
=begin
def hoge
    print "Hoge "
    yield
end
=end

puts "---"

def total(from, to)
  result = 0
  from.upto(to) do |num|
    if block_given?
      result += yield(num)
    elsif
      result += num
    end
  end
  return result
end

# ブロックなしの呼び出し
puts total(1,10)

# ブロック有りの呼び出し(べき乗)
n = total(1,10) do |num|
  num ** 2
end
puts n

puts total(1,10) { |num|
  num ** 2
}

puts "---"

# Procクラスによるブロックの保持
hello = Proc.new do |var|
  puts var
end

hello.call("Hello!")

puts "---"

# yieldの代わりに&を利用しブロックをコールする
# &を指定するとブロックが自動的に保持される(内部ではProcクラスのインスタンスが作成される)．
# なお，メソッドの一番最後に定義する．
def total2(from, to, &block)

  result = 0
  from.upto(to) do |num|
    if block
      result += block.call(num)
    elsif
      result += num
    end
  end
  return result
end

puts total2(1,10) { |num|
  num ** 2
}
