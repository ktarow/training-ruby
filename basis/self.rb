
class Basis
  # トップレベルではクラスが参照される
  puts self

  # インスタンスメソッド内のselfはオブジェクトが参照される
  def instant_self
    self
  end

  # クラスメソッド内のselfはクラスが参照される
  def self.class_self
    self
  end

  # クラスメソッド定義のイディオム
  # 特異クラスを定義
  class << self
    # クラスが参照される
    def class_self2
      self
    end
  end
end

obj = Basis.new
# インスタンスをレシーバに呼び出した場合のself
puts obj.instant_self

# クラスをレシーバに呼び出した場合のself
puts Basis.class_self
puts Basis.class_self2

var = 'hello'

# オブジェクトに対して特異クラスを引き出し，特異メソッドを定義
class << var
  puts self

  # オブジェクトに対して呼び出しているため，オブジェクトが参照される
  def class_self3
    puts self
  end
end

var.class_self3
