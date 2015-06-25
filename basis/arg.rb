# いろいろな引数

# 基本
def method1(name)
  p name
end

# method1() <- これはエラー
method1("Hoge")
method1(["Hoge","Fuga"])
method1({hoge: "Hoge", fuga: "Fuga"})

# 可変長引数
# 実引数を配列として保持
def method2(*arg)
  p arg
end

method2(1,2,3,4,5)
# 入れ子になる
method2([1,2,3,4,5])

# デフォルト値定義
def method3(name = "Piyo")
  p name
end

method3()
method3("PiyoPiyo")

# 擬似キーワード引数
def method4(hash = {})
  p hash[:name]
  p hash[:age]
end

# デフォルト値を指定しているため，nilに
method4
method4(name: "Hoge")
method4(name: "Hoge", age: 24)

# キーワード引数
def method5(name: "Piyo", age: 25)
  p name
  p age
end

method5()
method5(name: "Fuga", age: 24)

# 引数として渡されていないキーワード引数を保持
def method6(name: "Fuga", **outer)
  p name
  p outer[:outer] # ハッシュとして保持される
end

method6(name: "Piyo",outer: "Outerだよ!")
# デフォルト値がある引数を省略
method6(outer: "Outerだよ!!")
