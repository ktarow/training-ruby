# 例外処理
begin
    # 0の除算にて，ZeroDivisionErrorを発生させる
    puts 10 / 0
rescue => ex
    # 補足
    puts ex.class
    puts ex.message
ensure
    puts "最後に必ず実行されるよ"
end

puts "---"

# 例外を発生させる
begin
    raise RuntimeError
rescue => ex
    puts ex.class
    puts ex.message
end

puts "---"

# retry
# 無限ループに注意する
n = 0
begin
    if n < 5
        raise RuntimeError
    end
rescue
    puts "#{n}回目の実行"
    n += 1
    retry
end
