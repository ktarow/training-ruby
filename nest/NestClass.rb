
class Parent
  class Child
    class << self
      def echo
        p "Nest"
      end
    end
  end
end

Parent::Child.echo

# error
# Parent.echo

p Parent.singleton_class.instance_methods
p Parent::Child.singleton_class.instance_methods

p Parent.ancestors
p Parent::Child.ancestors
