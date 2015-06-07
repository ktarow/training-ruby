# 全ての文法でdoを省略できる
# 一般的なfor文
arr = ["hoge", "huga" , "piyo"]

for val in arr
    puts val
end

# 範囲オブジェクトの利用
# 含む(1以上5以下)
for num in 1..5
    puts "#{num}回目"
end

# 含まない(1以上5未満)
for num in 1...5
    puts "#{num}回目"
end
