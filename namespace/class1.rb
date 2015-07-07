require './class2'

module NameSpace
  class Class1
    def initialize()
      cl2 = Class2.new 
      self.cl2 = cl2
    end
    attr_accessor :cl2
  end
end

obj = NameSpace::Class1.new
p obj.cl2.echo
