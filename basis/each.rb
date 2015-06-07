arr= ["hoge", "huga", "piyo"]

arr.each do |val|
    puts val
end

# 繰り返しの制御
# break,next,redo

arr2 = [1,2,3,4,5,6,7,8,9,10]

i = 0
arr2.each do |num|
    i += 1
    # 3以下だった場合に繰り返す
    if i <= 3 
        puts num
        redo 
    end 

    # 偶数以外の数値の時は読み飛ばし
    if num % 2 != 0
        next
    end

    # 7以上だった場合ループ終了
    if num > 7
        break
    end

    puts num
end
