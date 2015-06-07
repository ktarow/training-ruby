
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
