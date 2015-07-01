require './BaseModule'

class ModuleIncludeClass
  include BaseModule
end

BaseModule.base_module_method1 # "BaseModule ModuleMethod1!"
BaseModule.base_module_method2 # "BaseModule ModuleMethod2!"
# BaseModule.base_module_method3 # => NoMethodError

obj = ModuleIncludeClass.new
# 下記2つはエラー
# obj.base_module_method1 # => NoMethodError
# obj.base_module_method2 # => NoMethodError
obj.base_module_method3 # "BaseModule ModuleMethod3!"

# 下記は全てエラー
# ModuleIncludeClass.base_module_method1 # => NoMethodError
# ModuleIncludeClass.base_module_method2 # => NoMethodError
# ModuleIncludeClass.base_module_method3 # => NoMethodError

# 継承関係を見る
p ModuleIncludeClass.ancestors
# [ModuleIncludeClass, BaseModule, Object, Kernel, BasicObject]

# 特異クラス内のメソッドを確認
p ModuleIncludeClass.singleton_class.instance_methods
# [:allocate, :new, :superclass,…]

p BaseModule.singleton_class.instance_methods
# [:base_module_method1, :base_module_method2, …]

# 特異クラスの継承関係を見てみる
p ModuleIncludeClass.singleton_class.ancestors
# [#<Class:ModuleIncludeClass>, #<Class:Object>, #<Class:BasicObject>, Class, Module, Object, Kernel, BasicObject]

p BaseModule.singleton_class.ancestors
# [#<Class:BaseModule>, Module, Object, Kernel, BasicObject]
