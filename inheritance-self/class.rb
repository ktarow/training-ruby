require './module'

class ClassTest
  puts self

  #extend(ModuleTest)
  include(ModuleTest)
end

obj = ClassTest.new
#ClassTest.test
obj.test
