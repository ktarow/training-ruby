require 'forwardable'
require './parent'

class Delegate
  extend Forwardable

  def initialize()
    @parent = Parent.new
  end

  def_delegators :@parent, :method
end

obj = Delegate.new

p obj.class.ancestors
p obj.class.instance_methods

p obj.method
