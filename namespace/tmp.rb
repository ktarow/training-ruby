
module NameSpace
  class Tmp
    def initialize(name, age)
      self.name = name
      self.age = age
    end
    attr_accessor :name,:age
  end
end

obj = NameSpace::Tmp.new('hoge', 24)
p obj.name
p obj.age

class Child < NameSpace::Tmp
end

child = Child.new('huga', 25)
p child.name
p child.age
p child.class.ancestors
