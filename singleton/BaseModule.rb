
module BaseModule
  # モジュールメソッド(特異メソッド)定義
  def self.base_module_method1
    p "BaseModule ModuleMethod1!"
  end

  def base_module_method2
    p "BaseModule ModuleMethod2!"
  end
  module_function :base_module_method2

  # メソッド定義
  def base_module_method3
    p "BaseModule ModuleMethod3!"
  end
end
