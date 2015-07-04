
class Modifier
  # publicなメソッドはどこからでも呼び出し可能
  public
  def public_method
    p "Public!"
  end

  # 内部からprivateなメソッドやprotectedなメソッドにはアクセス可能
  def closure_method
    private_method
    protected_method
  end

  # privateなメソッドはレシーバを省略してしか呼び出せない
  private
  def private_method
    p "Private!"
  end

  # protectedは同じクラスまたはそのサブクラスの別オブジェクトかレシーバを省略しての呼び出し可能
  protected
  def protected_method
    p "Protected!"
  end
end

obj = Modifier.new

obj.public_method
# クラス外からの直接の呼び出しは不可
# obj.private_method # => NoMethodError
# obj.protected_method # => NoMethodError

obj.closure_method

class ModifierChild < Modifier
  # 継承したクラスからでも親クラスのprivate・protectedなメソッドにアクセス可能
  def closure_method_child
    private_method
    protected_method
  end

  def call_protected_method(obj)
    obj.protected_method
  end
end

child_obje = ModifierChild.new
child_obje.closure_method_child
child_obje.call_protected_method(obj)
