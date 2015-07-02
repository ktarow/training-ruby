require './ParentClass'
require './IncludeModule'
require './IncludeModule2'
require './ExtendModule'

class MainClass < ParentClass
  include IncludeModule
  include IncludeModule2
  extend ExtendModule
end

p MainClass.ancestors
# [# MainClass, IncludeModule2, IncludeModule, ParentClass, ParentIncludeModule, Object, Kernel, BasicObject]

p MainClass.singleton_class.ancestors
# [#<Class:MainClass>, ExtendModule, #<Class:ParentClass>, #<Class:Object>, #<Class:BasicObject>, Class, Module, Object, Kernel, BasicObject]

