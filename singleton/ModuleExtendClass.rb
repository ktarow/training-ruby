require './BaseModule'

class ModuleExtendClass
  extend BaseModule
end

BaseModule.base_module_method1 # => "BaseModule ModuleMethod1!"
BaseModule.base_module_method2 # => "BaseModule ModuleMethod2!"
#BaseModule.base_module_method3 # => NoMethodError

obj = ModuleExtendClass.new
# 全てエラー
# obj.base_module_method1 # => NoMethodError
# obj.base_module_method2 # => NoMethodError
# obj.base_module_method3 # => NoMethodError

# 下記は2つはエラー
# ModuleExtendClass.base_module_method1 # => NoMethodError
# ModuleExtendClass.base_module_method2 # => NoMethodError
ModuleExtendClass.base_module_method3 # "BaseModule ModuleMethod3!"

# 継承関係を見る
p ModuleExtendClass.ancestors
# [ModuleExtendClass, Object, Kernel, BasicObject]

# 特異クラス内のメソッドを確認
p ModuleExtendClass.singleton_class.instance_methods
# [:base_module_method3, …]

p BaseModule.singleton_class.instance_methods
# [:base_module_method1, :base_module_method2, …]

# 特異クラスの継承関係を見てみる
p ModuleExtendClass.singleton_class.ancestors
# [#<Class:ModuleExtendClass>, BaseModule, #<Class:Object>, #<Class:BasicObject>, Class, Module, Object, Kernel, BasicObject]

p BaseModule.singleton_class.ancestors
# [#<Class:BaseModule>, Module, Object, Kernel, BasicObject]
