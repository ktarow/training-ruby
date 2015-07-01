
class BaseClass
  # クラスメソッド(特異メソッド)の定義
  def self.base_singleton_method
    p "BaseClass Singleton Method!"
  end
end

# クラスメソッド(特異メソッド)の実行
BaseClass.base_singleton_method # "BaseClass Singleton Method!"

# BaseClassの親クラスの継承関係を配列で表示(特異クラスを含まない)
p BaseClass.ancestors
# [BaseClass, Object, Kernel, BasicObject]

# BaseClassの特異クラスのメソッドを見る
p BaseClass.singleton_class.instance_methods
# [:base_singleton_method, …]

# オブジェクト生成
obj = BaseClass.new

# objの特異クラスとBaseClassの特異クラスを比較
p obj.singleton_class
# #<Class:#<BaseClass:0x007fd6c5f4a670>>
p BaseClass.singleton_class
# #<Class:BaseClass>

# オブジェクトobjの特異メソッド一覧を表示 -> singleton_methodは含まれない
p obj.singleton_class.instance_methods
# [:nil?, :===, …]

# レシーバーのオブジェクトが異なるため実行するとエラー
# p var.base_singleton_method # => NameError
