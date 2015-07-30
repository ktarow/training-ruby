require './parent'

class Child < Parent
  private
  def hello
    "Hello Child"
  end
end

parent = Parent.new
puts parent.get

child = Child.new
puts child.get
