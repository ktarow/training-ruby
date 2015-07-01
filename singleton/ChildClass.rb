require './BaseClass'

class ChildClass < BaseClass
  def self.child_singleton_method
    p "ChildClass Singleton Method!"
  end
end

ChildClass.child_singleton_method # "ChildClass Singleton Method!"
ChildClass.base_singleton_method # "BaseClass Singleton Method!"

# 親子関係を表示
p ChildClass.ancestors
# [ChildClass, BaseClass, Object, Kernel, BasicObject]

# 特異クラスのインスタンスメソッドを表示
p ChildClass.singleton_class.instance_methods
# [:child_singleton_method, :base_singleton_method, …]

# 特異クラスの親子関係を表示
p ChildClass.singleton_class.ancestors
# [#<Class:ChildClass>, #<Class:BaseClass>, #<Class:Object>, #<Class:BasicObject>, Class, Module, Object, Kernel, BasicObject]

# オブジェクト生成
obj = ChildClass.new

# もちろんこの呼び出しは成立せずエラー
#obj.child_singleton_method
