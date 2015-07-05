
module Parent
  module Child
    class ChildClass
      def echo
        self
      end
    end

    class << self
      def echo
        self
      end
    end
  end
end

p Parent::Child.echo

obj = Parent::Child::ChildClass.new
p obj.class.ancestors
p obj.echo
