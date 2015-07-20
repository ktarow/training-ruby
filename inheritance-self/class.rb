require './module'

class ClassTest
  puts self

  extend(ModuleTest)
end

ClassTest.new
ClassTest.test
