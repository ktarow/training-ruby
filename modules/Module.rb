require './IncludeModule'

module Test
  class << self
    include IncludeModule
  end

  # 同義
  # extend IncludeModule
end

p Test.singleton_class.instance_methods
p Test.ancestors
p Test.singleton_class.ancestors
p Test.echo
