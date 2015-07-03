
class Parent
  def initialize(name = "parent")
    @name = name
  end
  attr_reader :name

  def getName
    @name
  end
end

class Child1 < Parent
  # 初期化メソッドを定義
  def initialize(name = "child")
    @name = name
  end
end

class Child2 < Parent
  # 初期化メソッドを定義しない
  def setName(name)
    @name = name
  end
end

# 別オブジェクトとして2つのインスタンスを生成
child1 = Child1.new
child2 = Child2.new

# 継承関係としては同じ
p child1.class.ancestors
p child2.class.ancestors

# initializeメソッドもインスタンスメソッドなので下位のクラスからルックアップが始まる
p child1.name

# Parentクラスのinitializeメソッドが呼ばれインスタンス変数が初期化される
p child2.name

# インスタンス変数は親クラスとも共存しているため，子クラスのメソッドでセッターを呼び出し
# 親クラスで定義されているメソッドを呼び出しても同じ値が変える
child2.setName("set child name")
p child2.getName
