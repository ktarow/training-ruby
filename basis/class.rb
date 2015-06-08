
class Basis
    # インスタンス変数
    @instant_var_name
    @instant_var_age

    # クラス変数
    @@class_var = "Hoge"

    # 定数
    Version = 1.0

    # コンストラクタ
    def initialize(name,age)
        @instant_var_name = name
        @instant_var_age = age
    end

    # クラス変数のアクセサ
    def self.class_var
        puts @@class_var
    end

    # reader,writerを含んだアクセサ定義
    attr_accessor :instant_var_name
    attr_accessor :instant_var_age
    
=begin
    # 上記と同じ
    # rubyではインスタンス・クラス変数を参照・代入する際にはアクセサが必要
    def name
        @instant_ver_name
    end

    #慣習的にメソッド名に=を付ける
    # var.name = "Hoge" と呼びだすと name=("Hoge")と呼び出されていることになる
    def name=(name)
        @instant_ver_name = name
    end

    以下略
=end

end

var = Basis.new("watanabeko",99)

puts var.instant_var_name
puts var.instant_var_age
Basis.class_var
puts Basis::Version

var.instant_var_age = 24
puts var.instant_var_age
